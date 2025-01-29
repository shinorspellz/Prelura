import 'dart:async';
import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_riverpod/flutter_riverpod.dart';

final placeSearchQueryProvider = StateProvider<String?>((ref) {
  return null;
});

final suggestedPlacesProvider = AsyncNotifierProvider.autoDispose<
    SuggestedPlacesNotifier,
    List<AutocompletePrediction>>(SuggestedPlacesNotifier.new);

class SuggestedPlacesNotifier
    extends AutoDisposeAsyncNotifier<List<AutocompletePrediction>> {
  @override
  FutureOr<List<AutocompletePrediction>> build() async {
    final query = ref.watch(placeSearchQueryProvider);
    if (query?.isEmpty ?? true) return [];
    return await _getLocationResults(query!) ?? [];
  }

  Future<List<AutocompletePrediction>?> _getLocationResults(
      String query) async {
    final String? apiKey = dotenv.env['LOCATION_API_KEY'];

    Uri uri =
        Uri.https("maps.googleapis.com", "maps/api/place/autocomplete/json", {
      "input": query,
      "key": apiKey,
    });
    String? response = await getPlaces(uri);

    if (response == null) {
      return null;
    }
    PlaceAutocompleteResponse result =
        PlaceAutocompleteResponse.parseAutocompleteResult(response);

    return result.predictions;
  }

  Future<dynamic> getPlacesDetail(String placeId) async {
    final String? apiKey = dotenv.env['LOCATION_API_KEY'];
    final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/place/details/json?placeid=$placeId&key=$apiKey');

    final timeout = const Duration(milliseconds: 3000);

    try {
      final response = await http.get(url).timeout(timeout);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data['result'] != null) {
          final location = data['result'];
          return location;
        }
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  static Future<String?> getPlaces(Uri uri,
      {Map<String, String>? headers}) async {
    try {
      final response = await http.get(uri, headers: headers);
      if (response.statusCode == 200) {
        return response.body;
      }
    } catch (e) {}
    return null;
  }
}

class PlaceAutocompleteResponse {
  final String? status;
  final List<AutocompletePrediction>? predictions;

  PlaceAutocompleteResponse({this.status, this.predictions});

  factory PlaceAutocompleteResponse.fromJson(Map<String, dynamic> json) {
    return PlaceAutocompleteResponse(
      status: json['status'] as String?,
      predictions: json['predictions']
          ?.map<AutocompletePrediction>(
              (json) => AutocompletePrediction.fromJson(json))
          .toList(),
    );
  }

  static PlaceAutocompleteResponse parseAutocompleteResult(
      String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();

    return PlaceAutocompleteResponse.fromJson(parsed);
  }
}

class AutocompletePrediction {
  /// [description] contains the human-readable name for the returned result. For establishment results, this is usually
  /// the business name.
  final String? description;

  /// [structuredFormatting] provides pre-formatted text that can be shown in your autocomplete results
  final StructuredFormatting? structuredFormatting;

  /// [placeId] is a textual identifier that uniquely identifies a place. To retrieve information about the place,
  /// pass this identifier in the placeId field of a Places API request. For more information about place IDs.
  final String? placeId;

  /// [reference] contains reference.
  final String? reference;

  AutocompletePrediction({
    this.description,
    this.structuredFormatting,
    this.placeId,
    this.reference,
  });

  factory AutocompletePrediction.fromJson(Map<String, dynamic> json) {
    return AutocompletePrediction(
      description: json['description'] as String?,
      placeId: json['place_id'] as String?,
      reference: json['reference'] as String?,
      structuredFormatting: json['structured_formatting'] != null
          ? StructuredFormatting.fromJson(json['structured_formatting'])
          : null,
    );
  }
}

class StructuredFormatting {
  /// [mainText] contains the main text of a prediction, usually the name of the place.
  final String? mainText;

  /// [secondaryText] contains the secondary text of a prediction, usually the location of the place.
  final String? secondaryText;

  StructuredFormatting({this.mainText, this.secondaryText});

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) {
    return StructuredFormatting(
      mainText: json['main_text'] as String?,
      secondaryText: json['secondary_text'] as String?,
    );
  }
}
