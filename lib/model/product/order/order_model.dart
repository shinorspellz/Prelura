// To parse this JSON data, do
//
//     final order = orderFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:prelura_app/model/product/product_model.dart';

import '../../../core/graphql/__generated/schema.graphql.dart';
import '../../chat/conversation_model.dart';
import '../../user/user_model.dart';

CreateOrderInfo orderFromJson(String str) =>
    CreateOrderInfo.fromJson(json.decode(str));

String orderToJson(CreateOrderInfo data) => json.encode(data.toJson());

class CreateOrderInfo {
  OrderInfo? order;
  bool? success;
  String? typename;

  CreateOrderInfo({
    this.order,
    this.success,
    this.typename,
  });

  CreateOrderInfo copyWith({
    OrderInfo? order,
    bool? success,
    String? typename,
  }) =>
      CreateOrderInfo(
        order: order ?? this.order,
        success: success ?? this.success,
        typename: typename ?? this.typename,
      );

  factory CreateOrderInfo.fromJson(Map<String, dynamic> json) =>
      CreateOrderInfo(
        order: json["order"] == null ? null : OrderInfo.fromJson(json["order"]),
        success: json["success"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "order": order?.toJson(),
        "success": success,
        "__typename": typename,
      };
}

ShippingAddress? _shippingAddressFromJson(dynamic jsonString) {
  if (jsonString is String) {
    final decodedJson = jsonDecode(jsonString);
    return ShippingAddress.fromJson(decodedJson);
  } else if (jsonString is Map<String, dynamic>) {
    return ShippingAddress.fromJson(jsonString);
  }
  return null;
}

String? _shippingAddressToJson(ShippingAddress? address) {
  return address != null ? jsonEncode(address.toJson()) : null;
}

class OrderInfo {
  DateTime? createdAt;
  String? discountPrice;
  String? id;
  dynamic priceTotal;
  @JsonKey(fromJson: _shippingAddressFromJson, toJson: _shippingAddressToJson)
  ShippingAddress? shippingAddress;
  dynamic shippingFee;
  DateTime? updatedAt;
  List<OrderProductInfo>? products;
  User? user;
  String? typename;
  String? status;
  List<ConversationModel>? conversation;

  OrderInfo(
      {this.createdAt,
      this.discountPrice,
      this.id,
      this.priceTotal,
      this.shippingAddress,
      this.shippingFee,
      this.status,
      this.updatedAt,
      this.products,
      this.user,
      this.typename,
      this.conversation});

  OrderInfo copyWith({
    DateTime? createdAt,
    String? discountPrice,
    String? id,
    String? priceTotal,
    @JsonKey(fromJson: _shippingAddressFromJson, toJson: _shippingAddressToJson)
    ShippingAddress? shippingAddress,
    String? shippingFee,
    String? status,
    DateTime? updatedAt,
    List<OrderProductInfo>? products,
    User? user,
    String? typename,
    List<ConversationModel>? conversation,
  }) =>
      OrderInfo(
          createdAt: createdAt ?? this.createdAt,
          discountPrice: discountPrice ?? this.discountPrice,
          id: id ?? this.id,
          priceTotal: priceTotal ?? this.priceTotal,
          shippingAddress: shippingAddress ?? this.shippingAddress,
          shippingFee: shippingFee ?? this.shippingFee,
          status: status ?? this.status,
          updatedAt: updatedAt ?? this.updatedAt,
          products: products ?? this.products,
          user: user ?? this.user,
          typename: typename ?? this.typename,
          conversation: conversation ?? this.conversation);

  factory OrderInfo.fromJson(Map<String, dynamic> json) => OrderInfo(
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        discountPrice: json["discountPrice"],
        id: json["id"],
        priceTotal: json["priceTotal"],
        shippingAddress: json["shippingAddress"] == null
            ? null
            : (json["shippingAddress"] is String
                ? ShippingAddress.fromJson(jsonDecode(json["shippingAddress"]))
                : ShippingAddress.fromJson(json["shippingAddress"])),
        shippingFee: json["shippingFee"],
        status: json["status"],
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        products: json["products"] == null
            ? []
            : List<OrderProductInfo>.from(
                json["products"]!.map((x) => OrderProductInfo.fromJson(x))),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        typename: json["__typename"],
        conversation: json["conversation"] == null
            ? []
            : List<ConversationModel>.from(json["conversation"]!
                .map((x) => ConversationModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt?.toIso8601String(),
        "discountPrice": discountPrice,
        "id": id,
        "priceTotal": priceTotal,
        "shippingAddress": shippingAddress?.toJson(),
        "shippingFee": shippingFee,
        "status": status,
        "updatedAt": updatedAt?.toIso8601String(),
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "user": user?.toJson(),
        "__typename": typename,
        "conversation": conversation == null
            ? []
            : List<dynamic>.from(conversation!.map((x) => x.toJson())),
      };
}

class OrderProductInfo {
  Brand? brand;
  Brand? category;
  List<ImagesUrl>? imagesUrl;
  String? id;
  String? hashtags;
  String? discountPrice;
  String? description;
  String? condition;
  DateTime? createdAt;
  dynamic customBrand;
  dynamic price;
  String? name;
  int? likes;
  bool? isFeatured;
  int? views;
  String? status;
  String? style;
  DateTime? updatedAt;
  bool? userLiked;
  String? parcelSize;
  List<Brand>? materials;
  List<String>? color;
  String? typename;

  OrderProductInfo({
    this.brand,
    this.category,
    this.imagesUrl,
    this.id,
    this.hashtags,
    this.discountPrice,
    this.description,
    this.condition,
    this.createdAt,
    this.customBrand,
    this.price,
    this.name,
    this.likes,
    this.isFeatured,
    this.views,
    this.status,
    this.style,
    this.updatedAt,
    this.userLiked,
    this.parcelSize,
    this.materials,
    this.color,
    this.typename,
  });

  OrderProductInfo copyWith({
    Brand? brand,
    Brand? category,
    List<ImagesUrl>? imagesUrl,
    String? id,
    String? hashtags,
    String? discountPrice,
    String? description,
    String? condition,
    DateTime? createdAt,
    dynamic customBrand,
    dynamic price,
    String? name,
    int? likes,
    bool? isFeatured,
    int? views,
    String? status,
    String? style,
    DateTime? updatedAt,
    bool? userLiked,
    String? parcelSize,
    List<Brand>? materials,
    List<String>? color,
    String? typename,
  }) =>
      OrderProductInfo(
        brand: brand ?? this.brand,
        category: category ?? this.category,
        imagesUrl: imagesUrl ?? this.imagesUrl,
        id: id ?? this.id,
        hashtags: hashtags ?? this.hashtags,
        discountPrice: discountPrice ?? this.discountPrice,
        description: description ?? this.description,
        condition: condition ?? this.condition,
        createdAt: createdAt ?? this.createdAt,
        customBrand: customBrand ?? this.customBrand,
        price: price ?? this.price,
        name: name ?? this.name,
        likes: likes ?? this.likes,
        isFeatured: isFeatured ?? this.isFeatured,
        views: views ?? this.views,
        status: status ?? this.status,
        style: style ?? this.style,
        updatedAt: updatedAt ?? this.updatedAt,
        userLiked: userLiked ?? this.userLiked,
        parcelSize: parcelSize ?? this.parcelSize,
        materials: materials ?? this.materials,
        color: color ?? this.color,
        typename: typename ?? this.typename,
      );

  factory OrderProductInfo.fromJson(Map<String, dynamic> json) =>
      OrderProductInfo(
        brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
        category:
            json["category"] == null ? null : Brand.fromJson(json["category"]),
        imagesUrl: json["imagesUrl"] == null
            ? []
            : List<ImagesUrl>.from(json["imagesUrl"]!
                .map((x) => ImagesUrl.fromJson(jsonDecode(x)))),
        id: json["id"],
        hashtags: json["hashtags"],
        discountPrice: json["discountPrice"],
        description: json["description"],
        condition: json["condition"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        customBrand: json["customBrand"],
        price: json["price"],
        name: json["name"],
        likes: json["likes"],
        isFeatured: json["isFeatured"],
        views: json["views"],
        status: json["status"],
        style: json["style"],
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        userLiked: json["userLiked"],
        parcelSize: json["parcelSize"],
        materials: json["materials"] == null
            ? []
            : List<Brand>.from(
                json["materials"]!.map((x) => Brand.fromJson(x))),
        color: json["color"] == null
            ? []
            : List<String>.from(json["color"]!.map((x) => x)),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "brand": brand?.toJson(),
        "category": category?.toJson(),
        "imagesUrl": imagesUrl == null
            ? []
            : List<dynamic>.from(imagesUrl!.map((x) => x.toJson())),
        "id": id,
        "hashtags": hashtags,
        "discountPrice": discountPrice,
        "description": description,
        "condition": condition,
        "createdAt": createdAt?.toIso8601String(),
        "customBrand": customBrand,
        "price": price,
        "name": name,
        "likes": likes,
        "isFeatured": isFeatured,
        "views": views,
        "status": status,
        "style": style,
        "updatedAt": updatedAt?.toIso8601String(),
        "userLiked": userLiked,
        "parcelSize": parcelSize,
        "materials": materials == null
            ? []
            : List<dynamic>.from(materials!.map((x) => x.toJson())),
        "color": color == null ? [] : List<dynamic>.from(color!.map((x) => x)),
        "__typename": typename,
      };
}

class ImagesUrl {
  String? url;
  String? thumbnail;

  ImagesUrl({
    this.url,
    this.thumbnail,
  });

  ImagesUrl copyWith({
    String? url,
    String? thumbnail,
  }) =>
      ImagesUrl(
        url: url ?? this.url,
        thumbnail: thumbnail ?? this.thumbnail,
      );

  factory ImagesUrl.fromJson(Map<String, dynamic> json) => ImagesUrl(
        url: json["url"],
        thumbnail: json["thumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "thumbnail": thumbnail,
      };
}

// class ShippingAddress {
//   String? city;
//   String? address;
//   String? country;
//   String? postcode;

//   ShippingAddress({
//     this.city,
//     this.address,
//     this.country,
//     this.postcode,
//   });

//   ShippingAddress copyWith({
//     String? city,
//     String? address,
//     String? country,
//     String? postcode,
//   }) =>
//       ShippingAddress(
//         city: city ?? this.city,
//         address: address ?? this.address,
//         country: country ?? this.country,
//         postcode: postcode ?? this.postcode,
//       );

//   factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
//       ShippingAddress(
//         city: json["city"],
//         address: json["address"],
//         country: json["country"],
//         postcode: json["postcode"],
//       );

//   Map<String, dynamic> toJson() => {
//         "city": city,
//         "address": address,
//         "country": country,
//         "postcode": postcode,
//       };
// }

class User {
  String? lastName;
  dynamic thumbnailUrl;
  String? username;
  dynamic profilePictureUrl;
  ShippingAddress? shippingAddress;
  String? fullName;
  String? displayName;
  String? typename;

  User({
    this.lastName,
    this.thumbnailUrl,
    this.username,
    this.profilePictureUrl,
    this.shippingAddress,
    this.fullName,
    this.displayName,
    this.typename,
  });

  User copyWith({
    String? lastName,
    dynamic thumbnailUrl,
    String? username,
    dynamic profilePictureUrl,
    ShippingAddress? shippingAddress,
    String? fullName,
    String? displayName,
    String? typename,
  }) =>
      User(
        lastName: lastName ?? this.lastName,
        thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
        username: username ?? this.username,
        profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        fullName: fullName ?? this.fullName,
        displayName: displayName ?? this.displayName,
        typename: typename ?? this.typename,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
        lastName: json["lastName"],
        thumbnailUrl: json["thumbnailUrl"],
        username: json["username"],
        profilePictureUrl: json["profilePictureUrl"],
        shippingAddress: json["shippingAddress"] == null
            ? null
            : ShippingAddress.fromJson(jsonDecode(json["shippingAddress"])),
        fullName: json["fullName"],
        displayName: json["displayName"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "lastName": lastName,
        "thumbnailUrl": thumbnailUrl,
        "username": username,
        "profilePictureUrl": profilePictureUrl,
        "shippingAddress": shippingAddress?.toJson(),
        "fullName": fullName,
        "displayName": displayName,
        "__typename": typename,
      };
}
