import 'dart:convert';

CategoriessModel categoriessModelFromJson(String str) =>
    CategoriessModel.fromJson(json.decode(str));

String categoriessModelToJson(CategoriessModel data) =>
    json.encode(data.toJson());

class CategoriessModel {
  List<Categoriess>? categoriess;
  String? typename;

  CategoriessModel({
    this.categoriess,
    this.typename,
  });

  CategoriessModel copyWith({
    List<Categoriess>? categoriess,
    String? typename,
  }) =>
      CategoriessModel(
        categoriess: categoriess ?? this.categoriess,
        typename: typename ?? this.typename,
      );

  factory CategoriessModel.fromJson(Map<String, dynamic> json) =>
      CategoriessModel(
        categoriess: json["categoriess"] == null
            ? []
            : List<Categoriess>.from(
                json["categoriess"]!.map((x) => Categoriess.fromJson(x))),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "categoriess": categoriess == null
            ? []
            : List<dynamic>.from(categoriess!.map((x) => x.toJson())),
        "__typename": typename,
      };
}

class Categoriess {
  String? id;
  String? name;
  bool? hasChildren;
  String? fullPath;
  Parent? parent;
  String? typename;

  Categoriess({
    this.id,
    this.name,
    this.hasChildren,
    this.fullPath,
    this.parent,
    this.typename,
  });

  Categoriess copyWith({
    String? id,
    String? name,
    bool? hasChildren,
    String? fullPath,
    Parent? parent,
    String? typename,
  }) =>
      Categoriess(
        id: id ?? this.id,
        name: name ?? this.name,
        hasChildren: hasChildren ?? this.hasChildren,
        fullPath: fullPath ?? this.fullPath,
        parent: parent ?? this.parent,
        typename: typename ?? this.typename,
      );

  factory Categoriess.fromJson(Map<String, dynamic> json) => Categoriess(
        id: json["id"],
        name: json["name"],
        hasChildren: json["hasChildren"],
        fullPath: json["fullPath"],
        parent: json["parent"] == null ? null : Parent.fromJson(json["parent"]),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "hasChildren": hasChildren,
        "fullPath": fullPath,
        "parent": parent?.toJson(),
        "__typename": typename,
      };
}

class Parent {
  String? id;
  String? typename;

  Parent({
    this.id,
    this.typename,
  });

  Parent copyWith({
    String? id,
    String? typename,
  }) =>
      Parent(
        id: id ?? this.id,
        typename: typename ?? this.typename,
      );

  factory Parent.fromJson(Map<String, dynamic> json) => Parent(
        id: json["id"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "__typename": typename,
      };
}
