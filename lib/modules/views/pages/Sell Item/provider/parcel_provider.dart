import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';

final parcelProvider = StateNotifierProvider<ParcelNotifier, Enum$ParcelSizeEnum?>((ref) {
  return ParcelNotifier();
});

class ParcelNotifier extends StateNotifier<Enum$ParcelSizeEnum?> {
  ParcelNotifier() : super(null);

  final parcelSizes = Enum$ParcelSizeEnum.values;

  void selectParcel(Enum$ParcelSizeEnum size) {
    state = size;
  }
}
