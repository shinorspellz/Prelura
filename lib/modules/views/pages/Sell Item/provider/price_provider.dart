import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/res/images.dart';

class SimilarItem {
  final String imageUrl;
  final String price;
  final String name;
  final String size;

  SimilarItem({
    required this.imageUrl,
    required this.price,
    required this.name,
    required this.size,
  });
}

class PricePageState {
  final String currentPrice;
  final String recommendedRange;
  final List<SimilarItem> similarItems;

  PricePageState({
    required this.currentPrice,
    required this.recommendedRange,
    required this.similarItems,
  });
}

class PricePageNotifier extends StateNotifier<PricePageState> {
  PricePageNotifier()
      : super(PricePageState(
          currentPrice: "",
          recommendedRange: "£6-£15",
          similarItems: [
            SimilarItem(
              imageUrl: PreluraIcons.Image,
              price: "£6.00",
              name: "Dickies",
              size: "L",
            ),
            SimilarItem(
              imageUrl: PreluraIcons.Image,
              price: "£6.00",
              name: "Dickies",
              size: "M",
            ),
            SimilarItem(
              imageUrl: PreluraIcons.Image,
              price: "£6.00",
              name: "Dickies",
              size: "L",
            ),
            SimilarItem(
              imageUrl: PreluraIcons.Image,
              price: "£6.00",
              name: "Dickies",
              size: "M",
            ),
            SimilarItem(
              imageUrl: PreluraIcons.Image,
              price: "£6.00",
              name: "Dickies",
              size: "L",
            ),
            SimilarItem(
              imageUrl: PreluraIcons.Image,
              price: "£6.00",
              name: "Dickies",
              size: "M",
            ),
            // Add more items here
          ],
        ));

  void updatePrice(String newPrice) {
    state = PricePageState(
      currentPrice: newPrice,
      recommendedRange: state.recommendedRange,
      similarItems: state.similarItems,
    );
  }
}

final pricePageProvider =
    StateNotifierProvider<PricePageNotifier, PricePageState>(
  (ref) => PricePageNotifier(),
);
