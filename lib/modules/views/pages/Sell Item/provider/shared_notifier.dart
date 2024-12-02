import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/sub_category_provider.dart';

// Shared data model
class SharedData {
  final String selectedValue;
  final List<String> relatedStrings;

  SharedData({required this.selectedValue, required this.relatedStrings});
}

// StateNotifier to manage navigation state and history
class SharedDataNotifier extends StateNotifier<List<SharedData>> {
  final Ref ref; // Store a reference to access other providers

  SharedDataNotifier(this.ref)
      : super([
          SharedData(
            selectedValue: ref.watch(selectedCategoryNotifierProvider).selectedValue,
            relatedStrings: ref.watch(selectedCategoryNotifierProvider).relatedStrings,
          ),
        ]);

  // Get the current state
  SharedData get current => state.last;

  // Update data and navigate forward
  void updateData(String selectedValue) {
    List<String> relatedStrings;
    switch (selectedValue) {
      case "Clothings":
        relatedStrings = [
          "Jeans",
          "Outerwear",
          "Tops & T-shirt",
          "Suits & Blazers",
          "Jumpers & Sweaters",
          "Trousers",
          "Shorts",
          "Socks & Underwear",
          "Sleepwear",
          "Swimwear",
          "Activewear",
          "Customes & Special Outfits",
          "Other men's Clothings"
        ];
        break;
      case 'Jeans':
        relatedStrings = [
          'Skinny Jeans',
          'Slim Fit Jeans',
          'Straight Fit Jeans',
          'Bootcut Jeans',
          'Distressed Jeans',
          'Relaxed Fit Jeans',
        ];
        break;
      case 'Outerwear':
        relatedStrings = [
          'Jackets',
          'Coats',
          'Parkas',
          'Vests',
          'Windbreakers',
          'Bomber Jackets',
        ];
        break;
      case 'Tops & T-Shirts':
        relatedStrings = [
          'Crew Neck T-Shirts',
          'V-Neck T-Shirts',
          'Polo Shirts',
          'Tank Tops',
          'Graphic Tees',
          'Henleys',
        ];
        break;
      case 'Suits & Blazers':
        relatedStrings = [
          'Two-Piece Suits',
          'Three-Piece Suits',
          'Casual Blazers',
          'Formal Blazers',
          'Tuxedos',
          'Sports Coats',
        ];
        break;
      case 'Jumpers & Sweaters':
        relatedStrings = [
          'Pullover Sweaters',
          'Cardigans',
          'Cable Knit Sweaters',
          'Turtlenecks',
          'Crew Neck Sweaters',
          'V-Neck Sweaters',
        ];
        break;
      case 'Trousers':
        relatedStrings = [
          'Formal Trousers',
          'Chinos',
          'Cargo Pants',
          'Joggers',
          'Pleated Trousers',
          'Cropped Trousers',
        ];
        break;
      case 'Shorts':
        relatedStrings = [
          'Denim Shorts',
          'Cargo Shorts',
          'Athletic Shorts',
          'Bermuda Shorts',
          'Chino Shorts',
          'Lounge Shorts',
        ];
        break;
      case 'Socks & Underwear':
        relatedStrings = [
          'Crew Socks',
          'Ankle Socks',
          'Compression Socks',
          'Boxers',
          'Briefs',
          'Boxer Briefs',
        ];
        break;
      case 'Sleepwear':
        relatedStrings = [
          'Pajama Sets',
          'Nightshirts',
          'Robes',
          'Sleep Shorts',
          'Thermal Sleepwear',
          'Sleep T-Shirts',
        ];
        break;
      case 'Swimwear':
        relatedStrings = [
          'Swim Trunks',
          'Board Shorts',
          'Swim Briefs',
          'Rash Guards',
          'Swim Jammers',
          'Wetsuits',
        ];
        break;
      case 'Activewear':
        relatedStrings = [
          'Gym T-Shirts',
          'Running Shorts',
          'Training Pants',
          'Compression Wear',
          'Hoodies & Sweatshirts',
          'Sports Jackets',
        ];
        break;
      case 'Costumes & Special Outfits':
        relatedStrings = [
          'Halloween Costumes',
          'Themed Party Outfits',
          'Traditional Wear (e.g., Kurta, Kilt)',
          'Cosplay Costumes',
          'Festive Suits (e.g., Christmas Suit)',
          'Performance Wear',
        ];
        break;
      case 'Other Men\'s Clothing':
        relatedStrings = [
          'Overalls',
          'Ponchos',
          'Capes',
          'Workwear',
          'Utility Clothing',
          'Miscellaneous Accessories (e.g., suspenders)',
        ];
        break;
      default:
        relatedStrings = [];
    }

    state = [
      ...state,
      SharedData(selectedValue: selectedValue, relatedStrings: relatedStrings),
    ];
  }

  // Go back to the previous state or reset if no previous state exists
  void goBack() {
    if (state.length > 1) {
      state = state.sublist(0, state.length - 1);
    } else {
      // Reset to the initial state from the selectedCategoryNotifierProvider
      final initialData = ref.watch(selectedCategoryNotifierProvider);
      state = [
        SharedData(
          selectedValue: initialData.selectedValue,
          relatedStrings: initialData.relatedStrings,
        )
      ];
    }
  }
}

// Riverpod provider
final sharedProductNotifierProvider = StateNotifierProvider<SharedDataNotifier, List<SharedData>>(
  (ref) => SharedDataNotifier(ref),
);
