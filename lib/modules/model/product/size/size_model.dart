import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';

part 'size_model.freezed.dart';
part 'size_model.g.dart';

@freezed
class SizeModel with _$SizeModel {
  const factory SizeModel({
    required dynamic id,
    required String sizeValue,
    required Enum$ProductsSizeSizeSystemChoices sizeSystem,
  }) = _SizeModel;

  factory SizeModel.fromJson(Map<String, dynamic> json) => _$SizeModelFromJson(json);
}
