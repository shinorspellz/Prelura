import 'package:freezed_annotation/freezed_annotation.dart';

part 'material_model.freezed.dart';
part 'material_model.g.dart';

@freezed
class MaterialModel with _$MaterialModel {
  const factory MaterialModel({
    required int id,
    required String name,
  }) = _MaterialModel;

  factory MaterialModel.fromJson(Map<String, dynamic> json) => _$MaterialModelFromJson(json);
}
