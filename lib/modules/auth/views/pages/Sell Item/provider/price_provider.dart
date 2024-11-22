import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'material_provider.dart';
import 'parcel_provider.dart';

final priceProvider = StateProvider<double>((ref) {
  final material = ref.watch(materialProvider);
  final parcelSize = ref.watch(parcelProvider);

  // Add logic to calculate price based on material and parcel size
  if (material == "Material 1" && parcelSize == "Small") {
    return 10.0;
  } else if (material == "Material 2" && parcelSize == "Medium") {
    return 20.0;
  }
  return 0.0; // Default price
});
