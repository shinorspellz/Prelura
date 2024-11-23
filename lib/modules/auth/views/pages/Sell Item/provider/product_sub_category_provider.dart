import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define a class to hold both the value and the array of strings
class SharedData {
  final String selectedValue;
  final List<String> relatedStrings;

  SharedData({required this.selectedValue, required this.relatedStrings});
}

// Create a StateNotifier that manages SharedData
class SubCategoryProductNotifier extends StateNotifier<SharedData> {
  SubCategoryProductNotifier()
      : super(SharedData(selectedValue: '', relatedStrings: []));

  // Method to return related strings based on the selected category
  List<String> getRelatedStrings(String heading) {
    switch (heading) {
      case "Clothings":
        return [
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
          'Costumes & Special Outfits',
          "Other Men's Clothing"
        ];
      case 'Jeans':
        return [
          'Skinny Jeans',
          'Slim Fit Jeans',
          'Straight Fit Jeans',
          'Bootcut Jeans',
          'Distressed Jeans',
          'Relaxed Fit Jeans',
        ];
      case 'Outerwear':
        return [
          'Jackets',
          'Coats',
          'Parkas',
          'Vests',
          'Windbreakers',
          'Bomber Jackets',
        ];
      case 'Tops & T-Shirts':
        return [
          'Crew Neck T-Shirts',
          'V-Neck T-Shirts',
          'Polo Shirts',
          'Tank Tops',
          'Graphic Tees',
          'Henleys',
        ];
      case 'Suits & Blazers':
        return [
          'Two-Piece Suits',
          'Three-Piece Suits',
          'Casual Blazers',
          'Formal Blazers',
          'Tuxedos',
          'Sports Coats',
        ];
      case 'Jumpers & Sweaters':
        return [
          'Pullover Sweaters',
          'Cardigans',
          'Cable Knit Sweaters',
          'Turtlenecks',
          'Crew Neck Sweaters',
          'V-Neck Sweaters',
        ];
      case 'Trousers':
        return [
          'Formal Trousers',
          'Chinos',
          'Cargo Pants',
          'Joggers',
          'Pleated Trousers',
          'Cropped Trousers',
        ];
      case 'Shorts':
        return [
          'Denim Shorts',
          'Cargo Shorts',
          'Athletic Shorts',
          'Bermuda Shorts',
          'Chino Shorts',
          'Lounge Shorts',
        ];
      case 'Socks & Underwear':
        return [
          'Crew Socks',
          'Ankle Socks',
          'Compression Socks',
          'Boxers',
          'Briefs',
          'Boxer Briefs',
        ];
      case 'Sleepwear':
        return [
          'Pajama Sets',
          'Nightshirts',
          'Robes',
          'Sleep Shorts',
          'Thermal Sleepwear',
          'Sleep T-Shirts',
        ];
      case 'Swimwear':
        return [
          'Swim Trunks',
          'Board Shorts',
          'Swim Briefs',
          'Rash Guards',
          'Swim Jammers',
          'Wetsuits',
        ];
      case 'Activewear':
        return [
          'Gym T-Shirts',
          'Running Shorts',
          'Training Pants',
          'Compression Wear',
          'Hoodies & Sweatshirts',
          'Sports Jackets',
        ];
      case 'Costumes & Special Outfits':
        return [
          'Halloween Costumes',
          'Themed Party Outfits',
          'Traditional Wear (e.g., Kurta, Kilt)',
          'Cosplay Costumes',
          'Festive Suits (e.g., Christmas Suit)',
          'Performance Wear',
        ];
      case 'Other Men\'s Clothing':
        return [
          'Overalls',
          'Ponchos',
          'Capes',
          'Workwear',
          'Utility Clothing',
          'Miscellaneous Accessories (e.g., suspenders)',
        ];
      default:
        return []; // Return an empty list for unrecognized headings
    }
  }

  // Method to update the selected value and related strings
  void updateData(String selectedValue) {
    List<String> relatedStrings = getRelatedStrings(selectedValue);

    // Update the state with the new selected value and related strings
    state = SharedData(
        selectedValue: selectedValue, relatedStrings: relatedStrings);
  }
}

// Create a StateNotifierProvider for SubCategoryProductNotifier
final selectedProductCategoryNotifierProvider =
    StateNotifierProvider<SubCategoryProductNotifier, SharedData>(
  (ref) => SubCategoryProductNotifier(),
);
