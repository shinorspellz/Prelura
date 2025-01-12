import 'dart:convert';

OfferInfo offerInfoFromJson(String str) => OfferInfo.fromJson(json.decode(str));

String offerInfoToJson(OfferInfo data) => json.encode(data.toJson());

class OfferInfo {
  dynamic id;
  dynamic price;
  String? status;
  dynamic offerPrice;
  String? createdAt;
  Buyer? buyer;
  Product? product;

  OfferInfo({
    this.id,
    this.price,
    this.status,
    this.offerPrice,
    this.createdAt,
    this.buyer,
    this.product,
  });

  OfferInfo copyWith({
    dynamic id,
    dynamic price,
    String? status,
    dynamic offerPrice,
    String? createdAt,
    Buyer? buyer,
    Product? product,
  }) =>
      OfferInfo(
        id: id ?? this.id,
        price: price ?? this.price,
        status: status ?? this.status,
        offerPrice: offerPrice ?? this.offerPrice,
        createdAt: createdAt ?? this.createdAt,
        buyer: buyer ?? this.buyer,
        product: product ?? this.product,
      );

  factory OfferInfo.fromJson(Map<String, dynamic> json) => OfferInfo(
        id: json["id"],
        price: json["price"]?.toDouble(),
        status: json["status"],
        offerPrice: json["offer_price"]?.toDouble(),
        createdAt: json["created_at"],
        buyer: json["buyer"] == null ? null : Buyer.fromJson(json["buyer"]),
        product: json["product"] == null
            ? null
            : json["product"].runtimeType == String
                ? Product.fromJson(jsonDecode(json["product"]))
                : Product.fromJson(json["product"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "status": status,
        "offer_price": offerPrice,
        "created_at": createdAt,
        "buyer": buyer?.toJson(),
        "product": product?.toJson(),
      };
}

class Buyer {
  dynamic id;
  String? username;
  String? thumbnailUrl;

  Buyer({
    this.id,
    this.username,
    this.thumbnailUrl,
  });

  Buyer copyWith({
    dynamic id,
    String? username,
    String? thumbnailUrl,
  }) =>
      Buyer(
        id: id ?? this.id,
        username: username ?? this.username,
        thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      );

  factory Buyer.fromJson(Map<String, dynamic> json) => Buyer(
        id: json["id"],
        username: json["username"],
        thumbnailUrl: json["thumbnail_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "thumbnail_url": thumbnailUrl,
      };
}

class Product {
  dynamic id;
  String? name, condition;
  dynamic price;
  dynamic discountPrice;
  List<ImagesUrl>? imagesUrl;
  String? size;
  dynamic style;
  dynamic brand;

  Product({
    this.id,
    this.name,
    this.price,
    this.discountPrice,
    this.imagesUrl,
    this.size,
    this.style,
    this.condition,
    this.brand,
  });

  Product copyWith({
    dynamic id,
    String? name,
    dynamic price,
    dynamic discountPrice,
    List<ImagesUrl>? imagesUrl,
    String? size,
    String? condition,
    dynamic style,
    dynamic brand,
  }) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        price: price ?? this.price,
        condition: condition ?? this.condition,
        discountPrice: discountPrice ?? this.discountPrice,
        imagesUrl: imagesUrl ?? this.imagesUrl,
        size: size ?? this.size,
        style: style ?? this.style,
        brand: brand ?? this.brand,
      );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        condition: json["condition"],
        discountPrice: json["discount_price"],
        imagesUrl: json["images_url"] == null
            ? []
            : json["images_url"].runtimeType == String
                ? [ImagesUrl(url: json["images_url"])]
                : List<ImagesUrl>.from(
                    json["images_url"]!.map((x) => ImagesUrl.fromJson(x))),
        size: json["size"],
        style: json["style"],
        brand: json["brand"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "condition": condition,
        "brand": brand,
        "discount_price": discountPrice,
        "images_url": imagesUrl == null
            ? []
            : List<dynamic>.from(imagesUrl!.map((x) => x.toJson())),
        "size": size,
        "style": style,
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
