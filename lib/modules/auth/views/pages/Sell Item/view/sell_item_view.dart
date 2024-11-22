import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/auth/views/widgets/menu_card.dart';

import '../provider/brand_provider.dart';
import '../provider/parcel_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class SellItemScreen extends ConsumerWidget {
  const SellItemScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sellItemProvider);
    final notifier = ref.read(sellItemProvider.notifier);
    final brandSelected = ref.watch(selectedBrandProvider);
    final sizeSelected = ref.watch(selectedSizeProvider);
    final parcelSizes = ref.watch(parcelProvider);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.white),
          onPressed: () => context.back(),
        ),
        title: Text(
          'Sell an item',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add up to 20 photos.',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              GestureDetector(
                onTap: () => notifier.addImages(),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_photo_alternate_outlined,
                            color: Colors.white),
                        SizedBox(height: 8),
                        Text(
                          'Upload photos',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (state.images.isNotEmpty)
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: state.images
                      .map((image) => Image.file(
                            File(image.path),
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ))
                      .toList(),
                ),
              SizedBox(height: 16),
              TextField(
                autofocus: false,
                onChanged: notifier.updateTitle,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: 'e.g. White COS Jumper',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                autofocus: false,
                onChanged: notifier.updateDescription,
                style: TextStyle(color: Colors.white),
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Describe your item',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: 'e.g. only worn a few times, true to size',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 16),
              MenuCard(
                title: "Category",
                onTap: () {
                  context.router.push(CategoryRoute());
                },
              ),
              MenuCard(
                title: 'Brand',
                subtitle: brandSelected ?? "",
                onTap: () {
                  context.router.push(BrandSelectionRoute());
                },
              ),
              MenuCard(
                title: 'Size',
                subtitle: sizeSelected ?? "",
                onTap: () {
                  context.router.push(SizeSelectionRoute());
                },
              ),
              MenuCard(
                title: 'Measurements (Recommended)',
                subtitle: brandSelected ?? "",
                onTap: () {
                  context.router.push(MaterialSelectionRoute());
                },
              ),
              MenuCard(
                title: 'Condtion',
                subtitle: brandSelected ?? "",
                onTap: () {
                  context.router.push(ConditionRoute());
                },
              ),
              MenuCard(
                title: 'Colours',
                onTap: () {
                  context.router.push(ColorSelectorRoute());
                },
              ),
              MenuCard(
                title: 'Material (Recommended)',
                subtitle: brandSelected ?? "",
                onTap: () {
                  context.router.push(MaterialSelectionRoute());
                },
              ),
              MenuCard(
                title: 'Price',
                subtitle: brandSelected ?? "",
                onTap: () {
                  context.router.push(ColorSelectorRoute());
                },
              ),
              MenuCard(
                title: 'Parcel Size',
                subtitle: parcelSizes,
                onTap: () {
                  context.router.push(ParcelRoute());
                },
              ),
              SizedBox(height: 16),
              Text(
                'The buyer always pays for postage.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              GestureDetector(
                onTap: () {
                  // Open additional compensation info
                },
                child: Text(
                  'See compensation information for sellers',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () async {
                  if (notifier.validateInputs()) {
                    await notifier.uploadItem();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Item uploaded successfully!')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('Please fill in all required fields')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Upload',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
