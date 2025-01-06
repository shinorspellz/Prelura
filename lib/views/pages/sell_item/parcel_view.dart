import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';
import '../../../res/colors.dart';
import '../../../controller/product/provider/parcel_provider.dart';
import '../../../controller/product/provider/sell_item_provider.dart';

@RoutePage()
class ParcelScreen extends ConsumerWidget {
  const ParcelScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parcelSizes = ref.watch(parcelProvider.notifier).parcelSizes;
    final selectedParcel = ref.watch(sellItemProvider).parcel;

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        centerTitle: true,
        appbarTitle: "Parcel Size",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ),
          PreluraCheckBox(
            title: parcelSizes[0].name,
            subtitle: "Choose this for light T-Shirts and small beauty items",
            isChecked: parcelSizes[0].name == selectedParcel?.name,
            onChanged: (value) {
              ref.read(sellItemProvider.notifier).selectParcel(parcelSizes[0]);
              // await SharedPreferencesHelper.saveSelection("selectedParcel", parcelSizes[index]);
              context.router.popForced();
            },
          ),
          PreluraCheckBox(
            title: parcelSizes[1].name,
            subtitle: "Dresses, handbags and ballet flats will fit into the parcel",
            isChecked: parcelSizes[1].name == selectedParcel?.name,
            onChanged: (value) {
              ref.read(sellItemProvider.notifier).selectParcel(parcelSizes[1]);
              // await SharedPreferencesHelper.saveSelection("selectedParcel", parcelSizes[index]);
              context.router.popForced();
            },
          ),
          PreluraCheckBox(
              title: parcelSizes[2].name,
              subtitle: "Choose this for light T-Shirts and small beauty items",
              isChecked: parcelSizes[2].name == selectedParcel?.name,
              onChanged: (value) {
                ref.read(sellItemProvider.notifier).selectParcel(parcelSizes[2]);
                // await SharedPreferencesHelper.saveSelection("selectedParcel", parcelSizes[index]);
                context.router.popForced();
              }),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16),
            child: Text(
              "See sizing and compensation details",
              style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline, decorationColor: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
