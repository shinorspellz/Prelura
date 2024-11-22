import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../res/colors.dart';
import '../provider/parcel_provider.dart';

@RoutePage()
class ParcelScreen extends ConsumerWidget {
  const ParcelScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parcelSizes = ref.watch(parcelProvider.notifier).parcelSizes;
    final selectedParcel = ref.watch(parcelProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        centerTitle: true,
        title: Text("Percel Size",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          const Divider(),
          ListTile(
            title: Text(parcelSizes[0]),
            subtitle:
                const Text("Choose this for light T-Shirts and small beauty items"),
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
          const Divider(),
          Divider(
            color: Theme.of(context).dividerColor,
            height: 10,
            thickness: 3,
          ),
          const Divider(),
          ListTile(
            title: Text(parcelSizes[1]),
            subtitle: const Text(
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
          const Divider(),
          Divider(
            color: Theme.of(context).dividerColor,
            height: 10,
            thickness: 3,
          ),
          const Divider(),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.green, // Customize color
                      borderRadius: BorderRadius.circular(12)),
                  child: Text("Star Wardrobe",
                      style: Theme.of(context).textTheme.bodySmall),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(parcelSizes[2]),
              ],
            ),
            subtitle:
                const Text("Choose this for light T-Shirts and small beauty items"),
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
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16),
            child: Text(
              "See sizing and compensation details",
              style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
