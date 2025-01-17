import 'dart:convert';

class OfferInfo {
  String? id;
  dynamic message;
  dynamic offerPrice;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic status;
  dynamic expiresAt;
  bool? deleted;
  Recipient? buyer;
  Product? product;
  String? typename;

  OfferInfo({
    this.id,
    this.message,
    this.offerPrice,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.expiresAt,
    this.deleted,
    this.buyer,
    this.product,
    this.typename,
  });

  factory OfferInfo.fromJson(Map<String, dynamic> json) => OfferInfo(
        id: json["id"],
        message: json["message"],
        offerPrice: json["offer_price"] ?? json["offerPrice"],
        status: json["offer_status"] ?? json["status"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        expiresAt: json["expiresAt"],
        deleted: json["deleted"],
        buyer: json["buyer"] == null ? null : Recipient.fromJson(json["buyer"]),
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
        "offerPrice": offerPrice,
        "status": status,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "expiresAt": expiresAt,
        "deleted": deleted,
        "buyer": buyer?.toJson(),
        "product": product?.toJson(),
        "__typename": typename,
      };
}

class Product {
  String? id;
  String? name;
  String? description;
  bool? isFeatured;
  bool? userLiked;
  Category? category;
  List<ImagesUrl>? imagesUrl;
  Category? size;
  Recipient? seller;
  String? condition;
  String? discountPrice;
  dynamic price;
  String? parcelSize;
  int? views;
  dynamic brand;
  int? likes;
  String? typename;

  Product({
    this.id,
    this.name,
    this.description,
    this.isFeatured,
    this.userLiked,
    this.imagesUrl,
    this.category,
    this.size,
    this.seller,
    this.condition,
    this.brand,
    this.discountPrice,
    this.price,
    this.parcelSize,
    this.views,
    this.likes,
    this.typename,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        isFeatured: json["isFeatured"],
        userLiked: json["userLiked"],
        brand: json["brand"],
        imagesUrl: json["images_url"] == null
            ? []
            : json["images_url"].runtimeType == String
                ? [ImagesUrl(url: json["images_url"])]
                : List<ImagesUrl>.from(
                    json["images_url"]!.map((x) => ImagesUrl.fromJson(x))),
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
        size: json["size"] == null ? null : Category.fromJson(json["size"]),
        seller:
            json["seller"] == null ? null : Recipient.fromJson(json["seller"]),
        condition: json["condition"],
        discountPrice: json["discountPrice"],
        price: json["price"],
        parcelSize: json["parcelSize"],
        views: json["views"],
        likes: json["likes"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "isFeatured": isFeatured,
        "userLiked": userLiked,
        "category": category?.toJson(),
        "size": size?.toJson(),
        "seller": seller?.toJson(),
        "condition": condition,
        "discountPrice": discountPrice,
        "price": price,
        "parcelSize": parcelSize,
        "views": views,
        "likes": likes,
        "__typename": typename,
      };
}

class Category {
  int? id;
  String? name;
  String? typename;

  Category({
    this.id,
    this.name,
    this.typename,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "__typename": typename,
      };
}

class Recipient {
  int? id;
  String? username;
  String? profilePictureUrl;
  String? thumbnailUrl;
  dynamic displayName;
  String? typename;

  Recipient({
    this.id,
    this.username,
    this.profilePictureUrl,
    this.thumbnailUrl,
    this.displayName,
    this.typename,
  });

  factory Recipient.fromJson(Map<String, dynamic> json) => Recipient(
        id: json["id"],
        username: json["username"],
        profilePictureUrl: json["profilePictureUrl"],
        thumbnailUrl: json["thumbnailUrl"],
        displayName: json["displayName"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "profilePictureUrl": profilePictureUrl,
        "thumbnailUrl": thumbnailUrl,
        "displayName": displayName,
        "__typename": typename,
      };
}

// class Seller {
//   int? id;
//   String? username;
//   String? profilePictureUrl;
//   String? typename;
//
//   Seller({
//     this.id,
//     this.username,
//     this.profilePictureUrl,
//     this.typename,
//   });
//
//   factory Seller.fromJson(Map<String, dynamic> json) => Seller(
//         id: json["id"],
//         username: json["username"],
//         profilePictureUrl: json["profilePictureUrl"],
//         typename: json["__typename"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "username": username,
//         "profilePictureUrl": profilePictureUrl,
//         "__typename": typename,
//       };
// }

///
///
///
///
// import 'dart:convert';
//
// import 'package:prelura_app/model/product/product_model.dart';
//
OfferInfo offerInfoFromJson(String str) => OfferInfo.fromJson(json.decode(str));

String offerInfoToJson(OfferInfo data) => json.encode(data.toJson());

// class OfferInfo {
//   dynamic id;
//   dynamic price;
//   String? status;
//   dynamic offerPrice;
//   String? createdAt;
//   Buyer? buyer;
//   Product? product;
//
//   OfferInfo({
//     this.id,
//     this.price,
//     this.status,
//     this.offerPrice,
//     this.createdAt,
//     this.buyer,
//     this.product,
//   });
//
//   OfferInfo copyWith({
//     dynamic id,
//     dynamic price,
//     String? status,
//     dynamic offerPrice,
//     String? createdAt,
//     Buyer? buyer,
//     Product? product,
//   }) =>
//       OfferInfo(
//         id: id ?? this.id,
//         price: price ?? this.price,
//         status: status ?? this.status,
//         offerPrice: offerPrice ?? this.offerPrice,
//         createdAt: createdAt ?? this.createdAt,
//         buyer: buyer ?? this.buyer,
//         product: product ?? this.product,
//       );
//
//   factory OfferInfo.fromJson(Map<String, dynamic> json) => OfferInfo(
//         id: json["id"],
//         price: json["price"]?.toDouble(),
//         status: json["status"],
//         offerPrice: json["offer_price"]?.toDouble(),
//         createdAt: json["created_at"],
//         buyer: json["buyer"] == null ? null : Buyer.fromJson(json["buyer"]),
//         product: json["product"] == null
//             ? null
//             : json["product"].runtimeType == String
//                 ? Product.fromJson(jsonDecode(json["product"]))
//                 : Product.fromJson(json["product"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "price": price,
//         "status": status,
//         "offer_price": offerPrice,
//         "created_at": createdAt,
//         "buyer": buyer?.toJson(),
//         "product": product?.toJson(),
//       };
// }
//
// class Buyer {
//   dynamic id;
//   String? username;
//   String? thumbnailUrl;
//
//   Buyer({
//     this.id,
//     this.username,
//     this.thumbnailUrl,
//   });
//
//   Buyer copyWith({
//     dynamic id,
//     String? username,
//     String? thumbnailUrl,
//   }) =>
//       Buyer(
//         id: id ?? this.id,
//         username: username ?? this.username,
//         thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
//       );
//
//   factory Buyer.fromJson(Map<String, dynamic> json) => Buyer(
//         id: json["id"],
//         username: json["username"],
//         thumbnailUrl: json["thumbnail_url"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "username": username,
//         "thumbnail_url": thumbnailUrl,
//       };
// }
//
// class Product {
//   dynamic id;
//   String? name, condition;
//   dynamic price;
//   dynamic discountPrice;
//   List<ImagesUrl>? imagesUrl;
//   SizeType? size;
//   dynamic style;
//   dynamic brand;
//
//   Product({
//     this.id,
//     this.name,
//     this.price,
//     this.discountPrice,
//     this.imagesUrl,
//     this.size,
//     this.style,
//     this.condition,
//     this.brand,
//   });
//
//   Product copyWith({
//     dynamic id,
//     String? name,
//     dynamic price,
//     dynamic discountPrice,
//     List<ImagesUrl>? imagesUrl,
//     SizeType? size,
//     String? condition,
//     dynamic style,
//     dynamic brand,
//   }) =>
//       Product(
//         id: id ?? this.id,
//         name: name ?? this.name,
//         price: price ?? this.price,
//         condition: condition ?? this.condition,
//         discountPrice: discountPrice ?? this.discountPrice,
//         imagesUrl: imagesUrl ?? this.imagesUrl,
//         size: size ?? this.size,
//         style: style ?? this.style,
//         brand: brand ?? this.brand,
//       );
//
//   factory Product.fromJson(Map<String, dynamic> json) => Product(
//         id: json["id"],
//         name: json["name"],
//         price: json["price"],
//         condition: json["condition"],
//         discountPrice: json["discount_price"],
//         imagesUrl: json["images_url"] == null
//             ? []
//             : json["images_url"].runtimeType == String
//                 ? [ImagesUrl(url: json["images_url"])]
//                 : List<ImagesUrl>.from(
//                     json["images_url"]!.map((x) => ImagesUrl.fromJson(x))),
//         size: json["size"] != null ? SizeType.fromJson(json["size"]) : null,
//         style: json["style"],
//         brand: json["brand"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "price": price,
//         "condition": condition,
//         "brand": brand,
//         "discount_price": discountPrice,
//         "images_url": imagesUrl == null
//             ? []
//             : List<dynamic>.from(imagesUrl!.map((x) => x.toJson())),
//         "size": size?.toJson(),
//         "style": style,
//       };
// }
//
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
