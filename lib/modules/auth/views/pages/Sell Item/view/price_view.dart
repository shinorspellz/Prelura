import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/res/colors.dart';

import '../provider/price_provider.dart'; // Update this path

@RoutePage()
class PriceScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pricePageState = ref.watch(pricePageProvider);

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
        title: Text("Price",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Price Section
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Price",
                hintText: "Enter price",
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(
                text: pricePageState.currentPrice,
              ),
              onChanged: (value) {
                ref.read(pricePageProvider.notifier).updatePrice(value);
              },
              onSubmitted: (value) {
                ref.read(pricePageProvider.notifier).updatePrice(value);
              },
            ),
            SizedBox(height: 32),
            Text(
              "Tip: ${pricePageState.recommendedRange} is the recommended price range based on similar items sold on Vinted.",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 48),

            // Similar Sold Items Section
            Text(
              "Similar sold items",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 8),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.75,
                ),
                itemCount: pricePageState.similarItems.length,
                itemBuilder: (context, index) {
                  final item = pricePageState.similarItems[index];
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset(
                            item.imageUrl,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.price,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(item.name),
                              Text(item.size),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Done Button
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: pricePageState.currentPrice.isNotEmpty
                  ? () {
                      // Pass the data back or proceed to the next screen
                      Navigator.pop(context);
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  "Done",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: PreluraColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
