import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as fileUtil;
import "package:http_parser/http_parser.dart" show MediaType;
import 'package:prelura_app/core/errors/failures.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/model/image_upload_response_model.dart';

typedef OnDownloadProgressCallback = void Function(int receivedBytes, int totalBytes);
typedef OnUploadProgressCallback = void Function(int sentBytes, int totalBytes);

class FileUploadRepo {
  final GraphQLClient _client;
  // final Box _cacheBox;

  FileUploadRepo(this._client);

  // String get _uploadUrl => 'https://uat-api.vmodel.app/images/prelura/$_getUsername/';

  Future<List<Input$ImagesInputType>?> uploadFiles(List<File> files, Enum$FileTypeEnum uploadType, {OnUploadProgressCallback? onUploadProgress}) async {
    final fps = files.map((e) => MultipartFile.fromFileSync(e.path)).toList();

    final res = await _client.mutate$UploadFile(Options$Mutation$UploadFile(
      fetchPolicy: FetchPolicy.noCache,
      variables: Variables$Mutation$UploadFile(
        files: fps,
        fileType: uploadType,
      ),
    ));

    if (res.hasException) {
      if (res.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = res.exception!.graphqlErrors.first.message;
        log(error, name: 'FileUploadRepo');
        throw error;
      }
      log(res.exception.toString(), name: 'FileUploadRepo');
      throw 'An error occured';
    }

    if (res.parsedData == null) {
      log('Mising response', name: 'FileUploadRepo');
      throw 'An error occured';
    }

    final response = res.parsedData;
    final uploadedFilesMap = response!.upload!.data;
    String baseUrl = response.upload!.baseUrl ?? '';
    if (uploadedFilesMap!.isNotEmpty) {
      final images = uploadedFilesMap.map((e) => ImageUploadResponseModel.fromMap(baseUrl, jsonDecode(e!))).toList();

      final filesToPost = images
          .map(
            (e) => Input$ImagesInputType(url: '${e.baseUrl}${e.image}', thumbnail: '${e.baseUrl}${e.thumbnail}'),
          )
          .toList();
      return filesToPost;
    }

    return null;
  }

  // Future<Map<String, dynamic>?> uploadRawBytesList(List<Uint8List> rawData, {OnUploadProgressCallback? onUploadProgress}) async {
  //   // final fps = files.map((e) => e.path).toList();

  //   final restToken = _getToken;

  //   if (restToken == null) throw const CacheFailure();

  //   final res = await _FileService.rawBytesDataUploadMultipart(
  //     url: _uploadUrl,
  //     restToken: restToken,
  //     rawDataList: rawData,
  //     onUploadProgress: onUploadProgress,
  //   );
  //   // return res;
  //   return jsonDecode(res);
  // }

  // String? get _getToken => _cacheBox.get('REST_TOKEN');
  // String? get _getUsername => _cacheBox.get('USERNAME');
}

/// File REST upload service
class _FileService {
  static bool trustSelfSigned = true;

  static HttpClient getHttpClient() {
    HttpClient httpClient = HttpClient()..connectionTimeout = const Duration(seconds: 10);

    return httpClient;
  }

  static Future<String> fileUploadMultipart({
    required String url,
    required String restToken,
    List<String>? files,
    OnUploadProgressCallback? onUploadProgress,
    List<int>? dimension,
  }) async {
    // assert(filePath == null || files == null);

    // final url = ;

    final httpClient = getHttpClient();

    final request = await httpClient.postUrl(Uri.parse(url));

    int byteCount = 0;

    List<http.MultipartFile> mpList = [];

    if (files == null) {
      return Future.value('');
    }

    for (String item in files) {
      final fileName = fileUtil.basename(item);
      final ext = fileUtil.extension(fileName);
      String mimeType = ext == 'mp4' ? 'video/mp4' : 'image/$ext';
      final file = await http.MultipartFile.fromPath(
        "file${mpList.length}",
        item,
        filename: fileName,
        contentType: MediaType.parse(mimeType),
      );
      mpList.add(file);
    }

    var requestMultipart = http.MultipartRequest("POST", request.uri);

    requestMultipart.files.addAll(mpList);

    var msStream = requestMultipart.finalize();

    var totalByteLength = requestMultipart.contentLength;

    request.contentLength = totalByteLength;

    request.headers.set(HttpHeaders.contentTypeHeader, requestMultipart.headers[HttpHeaders.contentTypeHeader] as Object);
    request.headers.set(HttpHeaders.authorizationHeader, 'Bearer $restToken');

    Stream<List<int>> streamUpload = msStream.transform(
      StreamTransformer.fromHandlers(
        handleData: (data, sink) {
          sink.add(data);

          byteCount += data.length;

          if (onUploadProgress != null) {
            onUploadProgress(byteCount, totalByteLength);
            // CALL STATUS CALLBACK;
          }
        },
        handleError: (error, stack, sink) {
          throw error;
        },
        handleDone: (sink) {
          sink.close();
          // UPLOAD DONE;
        },
      ),
    );

    await request.addStream(streamUpload);

    final httpResponse = await request.close();

    var statusCode = httpResponse.statusCode;

    if (statusCode ~/ 100 != 2) {
      throw Exception('Error uploading file, Status code: ${httpResponse.statusCode}');
    } else {
      final res = await readResponseAsString(httpResponse);
      return res;
    }
  }

  static Future<String> rawBytesDataUploadMultipart({
    required String url,
    required String restToken,
    List<Uint8List>? rawDataList,
    OnUploadProgressCallback? onUploadProgress,
  }) async {
    final httpClient = getHttpClient();

    final request = await httpClient.postUrl(Uri.parse(url));

    int byteCount = 0;

    List<http.MultipartFile> mpList = [];

    if (rawDataList == null) {
      //Todo throw an exception
      return Future.value('');
    }

    int count = 0;
    for (Uint8List item in rawDataList) {
      var image = http.MultipartFile.fromBytes(
        'image$count',
        item,
        filename: 'postImage$count.jpg',
        contentType: MediaType('image', '.jpg'),
      );
      mpList.add(image);
      ++count;
    }

    var requestMultipart = http.MultipartRequest("POST", request.uri);

    requestMultipart.files.addAll(mpList);

    var msStream = requestMultipart.finalize();

    var totalByteLength = requestMultipart.contentLength;

    request.contentLength = totalByteLength;

    request.headers.set(HttpHeaders.contentTypeHeader, requestMultipart.headers[HttpHeaders.contentTypeHeader] as Object);
    request.headers.set(HttpHeaders.authorizationHeader, 'Token $restToken');

    Stream<List<int>> streamUpload = msStream.transform(
      StreamTransformer.fromHandlers(
        handleData: (data, sink) {
          sink.add(data);

          byteCount += data.length;

          if (onUploadProgress != null) {
            onUploadProgress(byteCount, totalByteLength);
            // CALL STATUS CALLBACK;
          }
        },
        handleError: (error, stack, sink) {
          throw error;
        },
        handleDone: (sink) {
          sink.close();
          // UPLOAD DONE;
        },
      ),
    );

    await request.addStream(streamUpload);

    final httpResponse = await request.close();
//
    var statusCode = httpResponse.statusCode;

    if (statusCode ~/ 100 != 2) {
      throw Exception('Error uploading file, Status code: ${httpResponse.statusCode}');
    } else {
      final res = await readResponseAsString(httpResponse);
      return res;
    }
  }

  static Future<String> readResponseAsString(HttpClientResponse response) {
    var completer = Completer<String>();
    var contents = StringBuffer();
    response.transform(utf8.decoder).listen((String data) {
      contents.write(data);
    }, onDone: () => completer.complete(contents.toString()));
    return completer.future;
  }
}
