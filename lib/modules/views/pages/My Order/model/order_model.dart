class Order {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  final String status;
  final String type; // "Sold" or "Bought"

  Order({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.status,
    required this.type,
  });
}
