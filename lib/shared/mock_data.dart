import 'package:prelura_app/res/images.dart';

import 'card_model.dart';

final List<PreluraCardModel> mockData = [
  PreluraCardModel.fromMap({
    'title': 'Nike XL',
    'price': '15.40',
    'image': PreluraIcons.Image,
    'size': 'XL',
    'brand': 'Nike',
    'condition': 'New',
    'color': 'Gray',
    'discount': "20.4",
    'likes': 23,
  }),
  PreluraCardModel.fromMap({
    'title': 'Adidas S',
    'price': '25.40',
    'image': PreluraIcons.productImage,
    'size': 'S',
    'brand': 'Adidas',
    'condition': 'Used - Good',
    'color': ['White', 'blue'],
    'likes': 3,
  }),
  PreluraCardModel.fromMap({
    'title': 'Puma L',
    'price': '35.40',
    'image': PreluraIcons.productImage,
    'size': 'L',
    'brand': 'Puma',
    'condition': 'New',
    'color': 'Black'
  }),
  PreluraCardModel.fromMap({
    'title': 'Nike XL',
    'price': '15.40',
    'image': PreluraIcons.Image,
    'size': 'XL',
    'brand': 'Nike',
    'condition': 'New',
    'color': 'Gray',
    'discount': "20.4",
    'likes': 13,
  }),
  PreluraCardModel.fromMap({
    'title': 'Adidas S',
    'price': '25.40',
    'image': PreluraIcons.productImage,
    'size': 'S',
    'brand': 'Adidas',
    'condition': 'Used - Good',
    'color': ['White', 'blue'],
  }),
  PreluraCardModel.fromMap({
    'title': 'Puma L',
    'price': '35.40',
    'image': PreluraIcons.Image,
    'size': 'L',
    'brand': 'Puma',
    'condition': 'New',
    'color': 'Black'
  }),
];
