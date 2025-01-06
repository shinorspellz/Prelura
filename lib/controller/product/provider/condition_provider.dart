import 'package:flutter_riverpod/flutter_riverpod.dart';

final conditionProvider =
    StateNotifierProvider<ConditionNotifier, String?>((ref) {
  return ConditionNotifier();
});

class ConditionNotifier extends StateNotifier<String?> {
  ConditionNotifier() : super(null);

  void selectCondition(String selectedCondition) {
    state = selectedCondition;
  }
}
