import 'package:flutter_riverpod/flutter_riverpod.dart';

final parcelProvider = StateNotifierProvider<ParcelNotifier, String?>((ref) {
  return ParcelNotifier();
});

class ParcelNotifier extends StateNotifier<String?> {
  ParcelNotifier() : super(null);

  final List<String> parcelSizes = ["Small", "Medium", "Large"];

  void selectParcel(String selectedParcel) {
    state = selectedParcel;
  }
}
