// To parse this JSON data, do
//
//     final userOrders = userOrdersFromJson(jsonString);

import 'dart:convert';

import 'package:prelura_app/model/product/product_model.dart';

UserOrders userOrdersFromJson(String str) =>
    UserOrders.fromJson(json.decode(str));

String userOrdersToJson(UserOrders data) => json.encode(data.toJson());

class UserOrders {
  List<OrderInfo>? userOrders;
  int? userOrdersTotalNumber;
  String? typename;

  UserOrders({
    this.userOrders,
    this.userOrdersTotalNumber,
    this.typename,
  });

  factory UserOrders.fromJson(Map<String, dynamic> json) => UserOrders(
        userOrders: json["userOrders"] == null
            ? []
            : List<OrderInfo>.from(
                json["userOrders"]!.map((x) => OrderInfo.fromJson(x))),
        userOrdersTotalNumber: json["userOrdersTotalNumber"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "userOrders": userOrders == null
            ? []
            : List<dynamic>.from(userOrders!.map((x) => x.toJson())),
        "userOrdersTotalNumber": userOrdersTotalNumber,
        "__typename": typename,
      };
}

class PaymentSet {
  DateTime? createdAt;
  String? id;
  OrderInfo? order;
  String? paymentAmount;
  String? paymentIntentId;
  String? paymentMethod;
  String? paymentRef;
  String? paymentStatus;
  DateTime? updatedAt;
  String? typename;

  PaymentSet({
    this.createdAt,
    this.id,
    this.order,
    this.paymentAmount,
    this.paymentIntentId,
    this.paymentMethod,
    this.paymentRef,
    this.paymentStatus,
    this.updatedAt,
    this.typename,
  });

  factory PaymentSet.fromJson(Map<String, dynamic> json) => PaymentSet(
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        id: json["id"],
        order: json["order"] == null ? null : OrderInfo.fromJson(json["order"]),
        paymentAmount: json["paymentAmount"],
        paymentIntentId: json["paymentIntentId"],
        paymentMethod: json["paymentMethod"],
        paymentRef: json["paymentRef"],
        paymentStatus: json["paymentStatus"],
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt?.toIso8601String(),
        "id": id,
        "order": order?.toJson(),
        "paymentAmount": paymentAmount,
        "paymentIntentId": paymentIntentId,
        "paymentMethod": paymentMethod,
        "paymentRef": paymentRef,
        "paymentStatus": paymentStatus,
        "updatedAt": updatedAt?.toIso8601String(),
        "__typename": typename,
      };
}

class OrderInfo {
  DateTime? createdAt;
  String? id;
  String? priceTotal;
  dynamic user;
  List<PaymentSet>? paymentSet;
  DateTime? updatedAt;
  String? status;
  String? shippingFee;
  int? quantity;
  String? typename;
  Product? product;

  OrderInfo({
    this.createdAt,
    this.id,
    this.priceTotal,
    this.user,
    this.paymentSet,
    this.updatedAt,
    this.status,
    this.shippingFee,
    this.quantity,
    this.typename,
    this.product,
  });

  factory OrderInfo.fromJson(Map<String, dynamic> json) => OrderInfo(
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        id: json["id"],
        priceTotal: json["priceTotal"],
        user: json["user"],
        paymentSet: json["paymentSet"] == null
            ? []
            : List<PaymentSet>.from(
                json["paymentSet"]!.map((x) => PaymentSet.fromJson(x))),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        status: json["status"],
        shippingFee: json["shippingFee"],
        quantity: json["quantity"],
        typename: json["__typename"],
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt?.toIso8601String(),
        "id": id,
        "priceTotal": priceTotal,
        "user": user,
        "paymentSet": paymentSet == null
            ? []
            : List<dynamic>.from(paymentSet!.map((x) => x.toJson())),
        "updatedAt": updatedAt?.toIso8601String(),
        "status": status,
        "shippingFee": shippingFee,
        "quantity": quantity,
        "__typename": typename,
        "product": product?.toJson(),
      };
}

class Product {
  List<String>? color;
  String? condition;
  DateTime? createdAt;
  dynamic customBrand;
  String? description;
  String? discountPrice;
  String? id;
  List<String>? imagesUrl;
  String? name;
  String? status;
  Brand? brand;
  Brand? category;
  int? likes;
  bool? isFeatured;
  List<Brand>? materials;
  dynamic price;
  String? parcelSize;
  int? views;
  String? typename;

  Product({
    this.color,
    this.condition,
    this.createdAt,
    this.customBrand,
    this.description,
    this.discountPrice,
    this.id,
    this.imagesUrl,
    this.name,
    this.status,
    this.brand,
    this.category,
    this.likes,
    this.isFeatured,
    this.materials,
    this.price,
    this.parcelSize,
    this.views,
    this.typename,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        color: json["color"] == null
            ? []
            : List<String>.from(json["color"]!.map((x) => x)),
        condition: json["condition"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        customBrand: json["customBrand"],
        description: json["description"],
        discountPrice: json["discountPrice"],
        id: json["id"],
        imagesUrl: json["imagesUrl"] == null
            ? []
            : List<String>.from(json["imagesUrl"]!.map((x) => x)),
        name: json["name"],
        status: json["status"],
        brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
        category:
            json["category"] == null ? null : Brand.fromJson(json["category"]),
        likes: json["likes"],
        isFeatured: json["isFeatured"],
        materials: json["materials"] == null
            ? []
            : List<Brand>.from(
                json["materials"]!.map((x) => Brand.fromJson(x))),
        price: json["price"],
        parcelSize: json["parcelSize"],
        views: json["views"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "color": color == null ? [] : List<dynamic>.from(color!.map((x) => x)),
        "condition": condition,
        "createdAt": createdAt?.toIso8601String(),
        "customBrand": customBrand,
        "description": description,
        "discountPrice": discountPrice,
        "id": id,
        "imagesUrl": imagesUrl == null
            ? []
            : List<dynamic>.from(imagesUrl!.map((x) => x)),
        "name": name,
        "status": status,
        "brand": brand?.toJson(),
        "category": category?.toJson(),
        "likes": likes,
        "isFeatured": isFeatured,
        "materials": materials == null
            ? []
            : List<dynamic>.from(materials!.map((x) => x.toJson())),
        "price": price,
        "parcelSize": parcelSize,
        "views": views,
        "__typename": typename,
      };
}
