import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetail {
  final String imageUrl;
  final String title;
  final String brand;
  final String condition;
  final List<Color> colors;
  final String description;
  final double price;
  final double buyerProtectionCost;
  final String sellerName;
  final String sellerImage;
  final double sellerRating;
  final int reviewCount;
  final String category;
  final String size;
  final String uploadTime;
  final int views;
  final double postageCost;

  ProductDetail({
    required this.imageUrl,
    required this.title,
    required this.brand,
    required this.condition,
    required this.colors,
    required this.description,
    required this.price,
    required this.buyerProtectionCost,
    required this.sellerName,
    required this.sellerImage,
    required this.sellerRating,
    required this.reviewCount,
    required this.category,
    required this.size,
    required this.uploadTime,
    required this.views,
    required this.postageCost,
  });
}

// Define the provider for product detail
final productDetailProvider = Provider<ProductDetail>((ref) {
  return ProductDetail(
    imageUrl: 'assets/images/jacket.png', // Replace with asset or network image
    title: 'Asos Edited patchwork quilt jacket in red and cherry',
    brand: 'Asos Original',
    condition: 'New with tags',
    colors: [Color(0xFFddb6b7), Color(0xFF6f2225), Color(0xFFd63b3a)],
    description:
        'Item has never been worn, it was initially bought as a gift for my sister but it didn’t fit.',
    price: 300.00,
    buyerProtectionCost: 10.70,
    sellerName: 'selena204',
    sellerImage:
        'assets/images/seller.png', // Replace with asset or network image
    sellerRating: 4.8,
    reviewCount: 250,
    category: 'Jackets',
    size: 'S',
    uploadTime: '1 week ago',
    views: 240,
    postageCost: 1.99,
  );
});
