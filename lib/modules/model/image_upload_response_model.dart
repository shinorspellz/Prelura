// ignore_for_file: public_member_api_docs, sort_constructors_first
/// Helper model to parse response from uploading post images to bucket
/// and serializing to object that the API can consume using [toApiTypeMap].


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
  final bool status; // Indicates the success status of the upload.
  final String baseUrl; // Base URL for the uploaded file.
  final String message; // Message returned by the upload response.
  final String file_url; // URL of the uploaded file.
  final String sd_url; // URL of the standard definition version of the file.
  final String extension; // File extension (e.g., .jpg, .png).

  // Constructor to initialize all required fields of the model.
  ImageUploadResponseModel({
    required this.status,
    required this.baseUrl,
    required this.message,
    required this.file_url,
    required this.sd_url,
    required this.extension,
  });

  /// Converts object to map representing [FileUrlType] required by createPost mutation
  Map<String, dynamic> toApiTypeMap(String? caption) {
    return {
      'description': caption,
      'url': '$baseUrl$file_url',
      'thumbnail': '$baseUrl$sd_url',
      'extension': extension,
    };
  }

  /// Provides a map with the URL and thumbnail information.
  Map<String, dynamic> get toFileAndThumbnailMap {
    return {
      'url': '$baseUrl$file_url',
      'thumbnail': '$baseUrl$sd_url',
    };
  }

  /// Creates a copy of the model with optional overrides.
  ImageUploadResponseModel copyWith({
    bool? status,
    String? baseUrl,
    String? message,
    String? file_url,
    String? sd_url,
    String? extension,
  }) {
    return ImageUploadResponseModel(
      status: status ?? this.status,
      baseUrl: baseUrl ?? this.baseUrl,
      message: message ?? this.message,
      file_url: file_url ?? this.file_url,
      sd_url: sd_url ?? this.sd_url,
      extension: extension ?? this.extension,
    );
  }

  /// Converts the object into a standard map format.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'baseUrl': baseUrl,
      'message': message,
      'file_url': file_url,
      'sd_url': sd_url,
      'extension': extension,
    };
  }

  /// Factory method for creating an instance of the model from a map.
  factory ImageUploadResponseModel.fromMap(
      String baseUrl, Map<String, dynamic> map) {
    try {
      return ImageUploadResponseModel(
        status: map['status'] as bool,
        baseUrl: baseUrl,
        message: map['message'] as String,
        file_url: map['file_url'] as String,
        sd_url: map['sd_url'] as String? ?? '',
        extension: map['extension'] as String,
      );
    } catch (e) {
      // Print the error for debugging if necessary, then rethrow the exception.
      //print('$e, $st');
      rethrow;
    }
  }

  /// Provides a string representation of the object.
  @override
  String toString() {
    return 'ImageUploadResponseModel(status: $status, baseUrl: $baseUrl, message: $message, file_url: $file_url, sd_url: $sd_url, extension: $extension)';
  }

  /// Overrides equality operator to compare objects based on their properties.
  @override
  bool operator ==(covariant ImageUploadResponseModel other) {
    if (identical(this, other)) return true;

    return other.status == status &&
        other.baseUrl == baseUrl &&
        other.file_url == file_url &&
        other.sd_url == sd_url &&
        other.extension == extension;
  }

  /// Overrides hashCode to provide a hash representation of the object.
  @override
  int get hashCode {
    return status.hashCode ^
        baseUrl.hashCode ^
        file_url.hashCode ^
        sd_url.hashCode ^
        extension.hashCode;
  }
}
