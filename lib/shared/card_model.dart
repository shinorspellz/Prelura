class PreluraCardModel {
  final String title;
  final String condition;
  final String price;
  final String size;
  final List<String>? color;
  final int likes;
  final String? discount;
  final String image;
  final String brand;

  PreluraCardModel({
    required this.title,
    required this.condition,
    required this.price,
    required this.size,
    this.color,
    this.likes = 0,
    this.discount,
    required this.image,
    required this.brand,
  });

  /// Factory method to create an instance from a map
  factory PreluraCardModel.fromMap(Map<String, dynamic> map) {
    return PreluraCardModel(
      title: map['title']?.toString() ?? 'Untitled',
      condition: map['condition']?.toString() ?? 'Unknown',
      price: map['price']?.toString() ?? '0.0',
      size: map['size']?.toString() ?? 'Unknown',
      color: map['color'] is List
          ? List<String>.from(map['color'] as List)
          : (map['color'] != null ? [map['color'].toString()] : null),
      likes:
          map['likes'] != null ? int.tryParse(map['likes'].toString()) ?? 0 : 0,
      discount: map['discount']?.toString(),
      image: map['image']?.toString() ?? 'https://via.placeholder.com/150',
      brand: map['brand']?.toString() ?? 'Generic',
    );
  }

  /// Convert model back to a map
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'condition': condition,
      'price': price,
      'size': size,
      'color': color,
      'likes': likes,
      'discount': discount,
      'image': image,
      'brand': brand,
    };
  }
}
