import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class ImageService {
  static Future<List<XFile>> downloadImages(List<String> imageUrls) async {
    // Get the temporary directory of the app
    final tempDir = await getTemporaryDirectory();

    // Create a list to store the downloaded files
    List<XFile> downloadedFiles = [];

    for (String url in imageUrls) {
      try {
        // Get the image data from the URL
        final response = await http.get(Uri.parse(url));

        if (response.statusCode == 200) {
          // Create a file in the temp directory with a unique name
          final fileName = url.split('/').last; // Extract file name from URL
          final file = File('${tempDir.path}/$fileName');

          // Write the image data to the file
          await file.writeAsBytes(response.bodyBytes);

          // Add the file to the list of downloaded files
          downloadedFiles.add(XFile(file.path));
        } else {
          print('Failed to download image: $url');
        }
      } catch (e) {
        print('Error downloading image $url: $e');
      }
    }

    return downloadedFiles;
  }
}
