// ignore_for_file: public_member_api_docs, sort_constructors_first
/// Helper model to parse response from uploading post images to bucket
/// and serializing to object that the API can consume using [toApiTypeMap].
library;

/*
  File: image_upload_response_model.dart

  Description:
  This file contains the `ImageUploadResponseModel` class, which serves as a helper model 
  for parsing responses from uploading post images to a storage bucket and serializing 
  them into objects that the API can consume. It includes methods for converting the 
  object into API-specific formats.

  Code Implementation:
  - `toApiTypeMap`: Converts the object into a map that represents the `FileUrlType` 
    required by the createPost mutation.
  - `toFileAndThumbnailMap`: Provides a map with the URL and thumbnail information.
  - `copyWith`: Creates a copy of the model with optional overrides.
  - `toMap`: Converts the object into a standard map format.
  - `fromMap`: Factory method for creating an instance of the model from a map.
  - `toString`: Provides a string representation of the object.
  - `operator ==` and `hashCode`: Overrides equality and hashcode methods for comparison.
*/
class ImageUploadResponseModel {
  final String baseUrl; // Base URL for the uploaded file.
  final String image; // URL of the uploaded file.
  final String thumbnail; // URL of the standard definition version of the file.
  final String extension; // File extension (e.g., .jpg, .png).

  // Constructor to initialize all required fields of the model.
  ImageUploadResponseModel({
    required this.baseUrl,
    required this.image,
    required this.thumbnail,
    required this.extension,
  });

  /// Converts object to map representing [FileUrlType] required by createPost mutation
  Map<String, dynamic> toApiTypeMap(String? caption) {
    return {
      'description': caption,
      'url': '$baseUrl$image',
      'thumbnail': '$baseUrl$thumbnail',
      'extension': extension,
    };
  }

  /// Provides a map with the URL and thumbnail information.
  Map<String, dynamic> get toFileAndThumbnailMap {
    return {
      'url': '$baseUrl$image',
      'thumbnail': '$baseUrl$thumbnail',
    };
  }

  /// Creates a copy of the model with optional overrides.
  ImageUploadResponseModel copyWith({
    String? baseUrl,
    String? message,
    String? file_url,
    String? sd_url,
    String? extension,
  }) {
    return ImageUploadResponseModel(
      baseUrl: baseUrl ?? this.baseUrl,
      image: file_url ?? image,
      thumbnail: sd_url ?? thumbnail,
      extension: extension ?? this.extension,
    );
  }

  /// Converts the object into a standard map format.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': baseUrl,
      'image': image,
      'thumbnail': thumbnail,
      'extension': extension,
    };
  }

  /// Factory method for creating an instance of the model from a map.
  factory ImageUploadResponseModel.fromMap(String baseUrl, Map<String, dynamic> map) {
    try {
      return ImageUploadResponseModel(
        baseUrl: baseUrl,
        image: map['image'] as String,
        thumbnail: map['thumbnail'] as String? ?? '',
        extension: map['extension'] as String,
      );
    } catch (e) {
      // Print the error for debugging if necessary, then rethrow the exception.
      //print('$e, $st');
      rethrow;
    }
  }

  /// Overrides equality operator to compare objects based on their properties.
  @override
  bool operator ==(covariant ImageUploadResponseModel other) {
    if (identical(this, other)) return true;

    return other.baseUrl == baseUrl && other.image == image && other.thumbnail == thumbnail && other.extension == extension;
  }

  /// Overrides hashCode to provide a hash representation of the object.
  @override
  int get hashCode {
    return baseUrl.hashCode ^ image.hashCode ^ thumbnail.hashCode ^ extension.hashCode;
  }
}
