import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define a class to hold both the value and the array of strings
class SharedData {
  final String selectedValue;
  final List<String> relatedStrings;

  SharedData({required this.selectedValue, required this.relatedStrings});
}

// Create a StateNotifier that manages SharedData
class SubCategoryNotifier extends StateNotifier<SharedData> {
  SubCategoryNotifier()
      : super(SharedData(selectedValue: '', relatedStrings: []));

  // Method to update the selected value and related strings
  void updateData(String selectedValue) {
    // Example logic for selecting a value and getting related strings
    List<String> relatedStrings;
    switch (selectedValue) {
      case 'Men':
        relatedStrings = ['Clothings', 'Shoes', 'Accessories', 'Grooming'];
        break;
      case 'Women':
        relatedStrings = ['Skirts', 'Gowns', 'Flat  Shoes', 'Heels'];
        break;
      case 'Entertainment':
        relatedStrings = ['DSTV', 'GOTV', 'Startimes'];
        break;
      case 'Kids':
        relatedStrings = ['Clothings', 'Shoes', 'Accessories', 'Grooming'];
        break;
      case 'Pet Care':
        relatedStrings = [
          'Pet Food',
          'Pet Toys',
          'Grooming Supplies',
        ];
        break;
      case 'Home':
        relatedStrings = [
          'Furniture',
          'Decor',
          'Appliances',
          'Kitchenware',
        ];
        break;
      case 'Electronics':
        relatedStrings = [
          'Phones',
          'Laptops',
          'Televisions',
          'Audio Systems',
        ];
        break;
      default:
        relatedStrings = [];
    }

    // Update the state with the new selected value and related strings
    state = SharedData(
        selectedValue: selectedValue, relatedStrings: relatedStrings);
  }
}

// Create a StateNotifierProvider for SharedDataNotifier
final selectedCategoryNotifierProvider =
    StateNotifierProvider<SubCategoryNotifier, SharedData>(
  (ref) => SubCategoryNotifier(),
);
