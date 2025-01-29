import 'dart:convert';

import 'order_model.dart';

UserOrderResponse userOrderFromJson(String str) =>
    UserOrderResponse.fromJson(json.decode(str));

String userOrderToJson(UserOrderResponse data) => json.encode(data.toJson());

class UserOrderResponse {
  List<UserOrderinfo>? userOrders;
  int? userOrdersTotalNumber;
  String? typename;

  UserOrderResponse({
    this.userOrders,
    this.userOrdersTotalNumber,
    this.typename,
  });

  UserOrderResponse copyWith({
    List<UserOrderinfo>? userOrders,
    int? userOrdersTotalNumber,
    String? typename,
  }) =>
      UserOrderResponse(
        userOrders: userOrders ?? this.userOrders,
        userOrdersTotalNumber:
            userOrdersTotalNumber ?? this.userOrdersTotalNumber,
        typename: typename ?? this.typename,
      );

  factory UserOrderResponse.fromJson(Map<String, dynamic> json) =>
      UserOrderResponse(
        userOrders: json["userOrders"] == null
            ? []
            : List<UserOrderinfo>.from(
                json["userOrders"]!.map((x) => UserOrderinfo.fromJson(x))),
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

class UserOrderinfo {
  DateTime? createdAt;
  String? discountPrice;
  String? id;
  String? priceTotal;
  ShippingAddress? shippingAddress;
  String? shippingFee;
  String? status;
  DateTime? updatedAt;
  User? user;
  List<OrderProductInfo>? products;
  String? typename;

  UserOrderinfo({
    this.createdAt,
    this.discountPrice,
    this.id,
    this.priceTotal,
    this.shippingAddress,
    this.shippingFee,
    this.status,
    this.updatedAt,
    this.user,
    this.products,
    this.typename,
  });

  UserOrderinfo copyWith({
    DateTime? createdAt,
    String? discountPrice,
    String? id,
    String? priceTotal,
    ShippingAddress? shippingAddress,
    String? shippingFee,
    String? status,
    DateTime? updatedAt,
    User? user,
    List<OrderProductInfo>? products,
    String? typename,
  }) =>
      UserOrderinfo(
        createdAt: createdAt ?? this.createdAt,
        discountPrice: discountPrice ?? this.discountPrice,
        id: id ?? this.id,
        priceTotal: priceTotal ?? this.priceTotal,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        shippingFee: shippingFee ?? this.shippingFee,
        status: status ?? this.status,
        updatedAt: updatedAt ?? this.updatedAt,
        user: user ?? this.user,
        products: products ?? this.products,
        typename: typename ?? this.typename,
      );

  factory UserOrderinfo.fromJson(Map<String, dynamic> json) => UserOrderinfo(
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        discountPrice: json["discountPrice"],
        id: json["id"],
        priceTotal: json["priceTotal"],
        shippingAddress: json["shippingAddress"] == null
            ? null
            : ShippingAddress.fromJson(json["shippingAddress"]),
        shippingFee: json["shippingFee"],
        status: json["status"],
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        products: json["products"] == null
            ? []
            : List<OrderProductInfo>.from(
                json["products"]!.map((x) => OrderProductInfo.fromJson(x))),
        typename: json["__typename"],
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
        "user": user?.toJson(),
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "__typename": typename,
      };
}

// class Product {
//   Brand? brand;
//   Brand? category;
//   List<String>? color;
//   String? condition;
//   DateTime? createdAt;
//   String? description;
//   dynamic customBrand;
//   String? id;
//   List<ImagesUrl>? imagesUrl;
//   bool? isFeatured;
//   String? name;
//   int? price;
//   String? status;
//   Seller? seller;
//   String? style;
//   DateTime? updatedAt;
//   bool? userLiked;
//   int? views;
//   int? likes;
//   List<Brand>? materials;
//   String? discountPrice;
//   String? typename;
//
//   Product({
//     this.brand,
//     this.category,
//     this.color,
//     this.condition,
//     this.createdAt,
//     this.description,
//     this.customBrand,
//     this.id,
//     this.imagesUrl,
//     this.isFeatured,
//     this.name,
//     this.price,
//     this.status,
//     this.seller,
//     this.style,
//     this.updatedAt,
//     this.userLiked,
//     this.views,
//     this.likes,
//     this.materials,
//     this.discountPrice,
//     this.typename,
//   });
//
//   Product copyWith({
//     Brand? brand,
//     Brand? category,
//     List<String>? color,
//     String? condition,
//     DateTime? createdAt,
//     String? description,
//     dynamic customBrand,
//     String? id,
//     List<ImagesUrl>? imagesUrl,
//     bool? isFeatured,
//     String? name,
//     int? price,
//     String? status,
//     Seller? seller,
//     String? style,
//     DateTime? updatedAt,
//     bool? userLiked,
//     int? views,
//     int? likes,
//     List<Brand>? materials,
//     String? discountPrice,
//     String? typename,
//   }) =>
//       Product(
//         brand: brand ?? this.brand,
//         category: category ?? this.category,
//         color: color ?? this.color,
//         condition: condition ?? this.condition,
//         createdAt: createdAt ?? this.createdAt,
//         description: description ?? this.description,
//         customBrand: customBrand ?? this.customBrand,
//         id: id ?? this.id,
//         imagesUrl: imagesUrl ?? this.imagesUrl,
//         isFeatured: isFeatured ?? this.isFeatured,
//         name: name ?? this.name,
//         price: price ?? this.price,
//         status: status ?? this.status,
//         seller: seller ?? this.seller,
//         style: style ?? this.style,
//         updatedAt: updatedAt ?? this.updatedAt,
//         userLiked: userLiked ?? this.userLiked,
//         views: views ?? this.views,
//         likes: likes ?? this.likes,
//         materials: materials ?? this.materials,
//         discountPrice: discountPrice ?? this.discountPrice,
//         typename: typename ?? this.typename,
//       );
//
//   factory Product.fromJson(Map<String, dynamic> json) => Product(
//     brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
//     category: json["category"] == null ? null : Brand.fromJson(json["category"]),
//     color: json["color"] == null ? [] : List<String>.from(json["color"]!.map((x) => x)),
//     condition: json["condition"],
//     createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
//     description: json["description"],
//     customBrand: json["customBrand"],
//     id: json["id"],
//     imagesUrl: json["imagesUrl"] == null ? [] : List<ImagesUrl>.from(json["imagesUrl"]!.map((x) => ImagesUrl.fromJson(x))),
//     isFeatured: json["isFeatured"],
//     name: json["name"],
//     price: json["price"],
//     status: json["status"],
//     seller: json["seller"] == null ? null : Seller.fromJson(json["seller"]),
//     style: json["style"],
//     updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
//     userLiked: json["userLiked"],
//     views: json["views"],
//     likes: json["likes"],
//     materials: json["materials"] == null ? [] : List<Brand>.from(json["materials"]!.map((x) => Brand.fromJson(x))),
//     discountPrice: json["discountPrice"],
//     typename: json["__typename"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "brand": brand?.toJson(),
//     "category": category?.toJson(),
//     "color": color == null ? [] : List<dynamic>.from(color!.map((x) => x)),
//     "condition": condition,
//     "createdAt": createdAt?.toIso8601String(),
//     "description": description,
//     "customBrand": customBrand,
//     "id": id,
//     "imagesUrl": imagesUrl == null ? [] : List<dynamic>.from(imagesUrl!.map((x) => x.toJson())),
//     "isFeatured": isFeatured,
//     "name": name,
//     "price": price,
//     "status": status,
//     "seller": seller?.toJson(),
//     "style": style,
//     "updatedAt": updatedAt?.toIso8601String(),
//     "userLiked": userLiked,
//     "views": views,
//     "likes": likes,
//     "materials": materials == null ? [] : List<dynamic>.from(materials!.map((x) => x.toJson())),
//     "discountPrice": discountPrice,
//     "__typename": typename,
//   };
// }
//
// class Brand {
//   int? id;
//   String? name;
//   String? typename;
//
//   Brand({
//     this.id,
//     this.name,
//     this.typename,
//   });
//
//   Brand copyWith({
//     int? id,
//     String? name,
//     String? typename,
//   }) =>
//       Brand(
//         id: id ?? this.id,
//         name: name ?? this.name,
//         typename: typename ?? this.typename,
//       );
//
//   factory Brand.fromJson(Map<String, dynamic> json) => Brand(
//     id: json["id"],
//     name: json["name"],
//     typename: json["__typename"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "__typename": typename,
//   };
// }
//
// class ImagesUrl {
//   String? url;
//   String? thumbnail;
//
//   ImagesUrl({
//     this.url,
//     this.thumbnail,
//   });
//
//   ImagesUrl copyWith({
//     String? url,
//     String? thumbnail,
//   }) =>
//       ImagesUrl(
//         url: url ?? this.url,
//         thumbnail: thumbnail ?? this.thumbnail,
//       );
//
//   factory ImagesUrl.fromJson(Map<String, dynamic> json) => ImagesUrl(
//     url: json["url"],
//     thumbnail: json["thumbnail"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "url": url,
//     "thumbnail": thumbnail,
//   };
// }
//
// class Seller {
//   dynamic displayName;
//   String? fullName;
//   dynamic thumbnailUrl;
//   String? username;
//   int? id;
//   String? typename;
//
//   Seller({
//     this.displayName,
//     this.fullName,
//     this.thumbnailUrl,
//     this.username,
//     this.id,
//     this.typename,
//   });
//
//   Seller copyWith({
//     dynamic displayName,
//     String? fullName,
//     dynamic thumbnailUrl,
//     String? username,
//     int? id,
//     String? typename,
//   }) =>
//       Seller(
//         displayName: displayName ?? this.displayName,
//         fullName: fullName ?? this.fullName,
//         thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
//         username: username ?? this.username,
//         id: id ?? this.id,
//         typename: typename ?? this.typename,
//       );
//
//   factory Seller.fromJson(Map<String, dynamic> json) => Seller(
//     displayName: json["displayName"],
//     fullName: json["fullName"],
//     thumbnailUrl: json["thumbnailUrl"],
//     username: json["username"],
//     id: json["id"],
//     typename: json["__typename"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "displayName": displayName,
//     "fullName": fullName,
//     "thumbnailUrl": thumbnailUrl,
//     "username": username,
//     "id": id,
//     "__typename": typename,
//   };
// }
//
// class ShippingAddress {
//   String? city;
//   String? address;
//   String? country;
//   String? postcode;
//
//   ShippingAddress({
//     this.city,
//     this.address,
//     this.country,
//     this.postcode,
//   });
//
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
//
//   factory ShippingAddress.fromJson(Map<String, dynamic> json) => ShippingAddress(
//     city: json["city"],
//     address: json["address"],
//     country: json["country"],
//     postcode: json["postcode"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "city": city,
//     "address": address,
//     "country": country,
//     "postcode": postcode,
//   };
// }
//
// class User {
//   String? email;
//   String? fullName;
//   dynamic gender;
//   String? username;
//   dynamic thumbnailUrl;
//   dynamic profilePictureUrl;
//   ShippingAddress? shippingAddress;
//   String? typename;
//
//   User({
//     this.email,
//     this.fullName,
//     this.gender,
//     this.username,
//     this.thumbnailUrl,
//     this.profilePictureUrl,
//     this.shippingAddress,
//     this.typename,
//   });
//
//   User copyWith({
//     String? email,
//     String? fullName,
//     dynamic gender,
//     String? username,
//     dynamic thumbnailUrl,
//     dynamic profilePictureUrl,
//     ShippingAddress? shippingAddress,
//     String? typename,
//   }) =>
//       User(
//         email: email ?? this.email,
//         fullName: fullName ?? this.fullName,
//         gender: gender ?? this.gender,
//         username: username ?? this.username,
//         thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
//         profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
//         shippingAddress: shippingAddress ?? this.shippingAddress,
//         typename: typename ?? this.typename,
//       );
//
//   factory User.fromJson(Map<String, dynamic> json) => User(
//     email: json["email"],
//     fullName: json["fullName"],
//     gender: json["gender"],
//     username: json["username"],
//     thumbnailUrl: json["thumbnailUrl"],
//     profilePictureUrl: json["profilePictureUrl"],
//     shippingAddress: json["shippingAddress"] == null ? null : ShippingAddress.fromJson(json["shippingAddress"]),
//     typename: json["__typename"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "email": email,
//     "fullName": fullName,
//     "gender": gender,
//     "username": username,
//     "thumbnailUrl": thumbnailUrl,
//     "profilePictureUrl": profilePictureUrl,
//     "shippingAddress": shippingAddress?.toJson(),
//     "__typename": typename,
//   };
// }
