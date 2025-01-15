import 'dart:convert';

SizeModel sizeModelFromJson(String str) => SizeModel.fromJson(json.decode(str));

String sizeModelToJson(SizeModel data) => json.encode(data.toJson());

class SizeModel {
  List<Size>? sizes;
  String? typename;

  SizeModel({
    this.sizes,
    this.typename,
  });

  SizeModel copyWith({
    List<Size>? sizes,
    String? typename,
  }) =>
      SizeModel(
        sizes: sizes ?? this.sizes,
        typename: typename ?? this.typename,
      );

  factory SizeModel.fromJson(Map<String, dynamic> json) => SizeModel(
        sizes: json["sizes"] == null
            ? []
            : List<Size>.from(json["sizes"]!.map((x) => Size.fromJson(x))),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "sizes": sizes == null
            ? []
            : List<dynamic>.from(sizes!.map((x) => x.toJson())),
        "__typename": typename,
      };
}

class Size {
  int? id;
  String? name;
  Typename? typename;

  Size({
    this.id,
    this.name,
    this.typename,
  });

  Size copyWith({
    int? id,
    String? name,
    Typename? typename,
  }) =>
      Size(
        id: id ?? this.id,
        name: name ?? this.name,
        typename: typename ?? this.typename,
      );

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        id: json["id"],
        name: json["name"],
        typename: typenameValues.map[json["__typename"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "__typename": typenameValues.reverse[typename],
      };
}

enum Typename { SIZE_TYPE }

final typenameValues = EnumValues({"SizeType": Typename.SIZE_TYPE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
