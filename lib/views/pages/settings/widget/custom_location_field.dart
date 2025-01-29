import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/settings/profile_setting_view.dart';

class CustomLocationField extends StatefulWidget {
  final TextEditingController locationController;
  const CustomLocationField(
      {super.key,
      required this.locationController,
      required this.onDescriptionSelected});
  final Function(String?) onDescriptionSelected;

  @override
  State<CustomLocationField> createState() => _CustomLocationFieldState();
}

class _CustomLocationFieldState extends State<CustomLocationField> {
  final String? apiKey = dotenv.env["LOCATION_API_KEY"];
  List<AutocompletePrediction> placePredictions = [];

  void placeAutoComplete(String query) async {
    Uri uri =
        Uri.https("maps.googleapis.com", "maps/api/place/autocomplete/json", {
      "input": query,
      "key": apiKey,
    });
    String? response = await NetworkUtility.fetchUrl(uri);

    if (response != null) {
      PlaceAutocompleteResponse result =
          PlaceAutocompleteResponse.parseAutocompleteResult(response);

      if (result.predictions != null) {
        setState(() {
          placePredictions = result.predictions!;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      buildAuthTextField(
        context,
        label: 'Location',
        hintText: 'e.g. Exter, United Kingdom',
        controller: widget.locationController,
        onChanged: (value) {
          placeAutoComplete(value);
        },
      ),
      if (placePredictions.isNotEmpty) ...[
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: placePredictions.length,
            itemBuilder: (context, index) {
              log(placePredictions[index].toString());
              return LocationListTile(
                press: () {
                  widget.onDescriptionSelected(placePredictions[index].placeId);
                  setState(() {
                    widget.locationController.text =
                        placePredictions[index].description!;
                    placePredictions = [];
                  });
                },
                location: placePredictions[index].description!,
              );
            }),
      ],
    ]);
  }
}
