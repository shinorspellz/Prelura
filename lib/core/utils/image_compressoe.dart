import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

Future<File> compressImage({
  Uint8List? image,
  String? imagePath,
  required bool isPath,
}) async {
  try {
    final tempDir = await getTemporaryDirectory();
    final uniqueId = Uuid().v4();
    final outputPath = '${tempDir.path}/$uniqueId.webp';

    late String inputPath;

    if (isPath) {
      if (imagePath == null) {
        throw ArgumentError("Image path cannot be null when isPath is true.");
      }
      inputPath = imagePath;
    } else {
      if (image == null) {
        throw ArgumentError("Image bytes cannot be null when isPath is false.");
      }
      final tempFile = File('${tempDir.path}/temp_image_$uniqueId.jpg');
      await tempFile.writeAsBytes(image);
      inputPath = tempFile.path;
    }

    final compressedPhoto = await FlutterImageCompress.compressAndGetFile(
      inputPath,
      outputPath,
      quality: isPath ? 60 : 80,
      format: CompressFormat.webp,
    );

    if (compressedPhoto == null) {
      throw Exception("Image compression failed: compressedPhoto is null");
    }

    // Log size details
    final originalSizeKB = isPath
        ? (File(imagePath!).lengthSync() / 1024).toStringAsFixed(2)
        : (image!.lengthInBytes / 1024).toStringAsFixed(2);
    final compressedSizeKB =
        (File(compressedPhoto.path).lengthSync() / 1024).toStringAsFixed(2);

    log(":::::Original Image Size: $originalSizeKB KB");
    log(":::::Compressed Image Size: $compressedSizeKB KB");

    // File(inputPath).deleteSync(recursive: false);

    // Return results
    return

        // isPath
        // ?
        File(compressedPhoto.path)
        // : await compressedPhoto.readAsBytes()
        ;
  } catch (e) {
    log("Error during image compression: $e");
    rethrow;
  }
}
