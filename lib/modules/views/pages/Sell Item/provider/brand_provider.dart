import 'package:flutter_riverpod/flutter_riverpod.dart';

// Notifier for selected brand
class SelectedBrandNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void selectBrand(String? brand) {
    state = brand;
  }
}

final selectedBrandProvider =
    NotifierProvider<SelectedBrandNotifier, String?>(() => SelectedBrandNotifier());

// Notifier for selected size
class SelectedSizeNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void selectSize(String? size) {
    state = size;
  }
}

final selectedSizeProvider =
    NotifierProvider<SelectedSizeNotifier, String?>(() => SelectedSizeNotifier());
