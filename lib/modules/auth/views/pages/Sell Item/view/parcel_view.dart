import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';
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
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        centerTitle: true,
        appbarTitle: "Percel Size",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          ListTile(
            title: Text(parcelSizes[0]),
            subtitle: const Text(
                "Choose this for light T-Shirts and small beauty items"),
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
          const Divider(
            thickness: 1,
          ),
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
          const Divider(
            thickness: 1,
          ),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
            subtitle: const Text(
                "Choose this for light T-Shirts and small beauty items"),
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
          const Divider(
            thickness: 1,
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
