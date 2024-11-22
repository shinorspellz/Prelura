import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../res/colors.dart';
import '../provider/parcel_provider.dart';

@RoutePage()
class ParcelScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parcelSizes = ref.watch(parcelProvider.notifier).parcelSizes;
    final selectedParcel = ref.watch(parcelProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Select Parcel Size")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(parcelSizes[0]),
            subtitle:
                Text("Choose this for light T-Shirts and small beauty items"),
            trailing: Radio(
                value: parcelSizes[0],
                groupValue: selectedParcel,
                onChanged: (value) {
                  ref
                      .read(parcelProvider.notifier)
                      .selectParcel(parcelSizes[0]);
                  // await SharedPreferencesHelper.saveSelection("selectedParcel", parcelSizes[index]);
                  Navigator.pop(context);
                }),
          ),
          Divider(),
          ListTile(
            title: Text(parcelSizes[1]),
            subtitle: Text(
                "Dresses, handbags and ballet flats will fit into the parcel"),
            trailing: Radio(
                value: parcelSizes[1],
                groupValue: selectedParcel,
                onChanged: (value) {
                  ref
                      .read(parcelProvider.notifier)
                      .selectParcel(parcelSizes[1]);
                  // await SharedPreferencesHelper.saveSelection("selectedParcel", parcelSizes[index]);
                  Navigator.pop(context);
                }),
          ),
          Divider(),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text("Star Wardrobe",
                      style: Theme.of(context).textTheme.bodySmall),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.green, // Customize color
                      borderRadius: BorderRadius.circular(12)),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(parcelSizes[2]),
              ],
            ),
            subtitle:
                Text("Choose this for light T-Shirts and small beauty items"),
            trailing: Radio(
                value: parcelSizes[2],
                groupValue: selectedParcel,
                onChanged: (value) {
                  ref
                      .read(parcelProvider.notifier)
                      .selectParcel(parcelSizes[2]);
                  // await SharedPreferencesHelper.saveSelection("selectedParcel", parcelSizes[index]);
                  Navigator.pop(context);
                }),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "See sizing and compensation details",
            style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue),
          ),
        ],
      ),
    );
  }
}
