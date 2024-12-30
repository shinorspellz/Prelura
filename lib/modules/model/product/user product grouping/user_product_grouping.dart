import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_product_grouping.freezed.dart';
part 'user_product_grouping.g.dart';

@Freezed()
class CategoryGroupType with _$CategoryGroupType {
  factory CategoryGroupType({
    required final String name,
    required final int count,
  }) = _CategoryGroupType;
  factory CategoryGroupType.fromJson(Map<String, dynamic> json) =>
      _$CategoryGroupTypeFromJson(json);
}
