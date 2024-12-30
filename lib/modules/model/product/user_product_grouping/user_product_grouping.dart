import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_product_grouping.freezed.dart';
part 'user_product_grouping.g.dart';

@freezed
class CategoryGroupType with _$CategoryGroupType {
  const factory CategoryGroupType({
    required final int? id,
    required final String name,
    required final int count,
  }) = _CategoryGroupType;
  factory CategoryGroupType.fromJson(Map<String, dynamic> json) => _$CategoryGroupTypeFromJson(json);
}
