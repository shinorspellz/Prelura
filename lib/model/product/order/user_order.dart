// To parse this JSON data, do
//
//     final userOrders = userOrdersFromJson(jsonString);

import 'dart:convert';

import '../../chat/offer_info.dart';

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
