// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:prelura_app/res/images.dart';
//
// import '../model/order_model.dart';
//
// // Sample Data
// final ordersProvider = Provider<List<Order>>((ref) {
//   return [
//     Order(
//       id: '1',
//       title: 'Reworked Carhartt Hoodie Jacket',
//       imageUrl: PreluraIcons.women,
//       price: 80.00,
//       status: 'Sale completed!',
//       type: 'Sold',
//     ),
//     Order(
//       id: '1',
//       title: 'Reworked Carhartt Hoodie Jacket',
//       imageUrl: PreluraIcons.kids,
//       price: 80.00,
//       status: 'Sale in progress',
//       type: 'Sold',
//     ),
//     // Add mo
//     Order(
//       id: '1',
//       title: 'Reworked Carhartt Hoodie Jacket',
//       imageUrl: PreluraIcons.men,
//       price: 80.00,
//       status: 'Sale completed!',
//       type: 'Sold',
//     ),
//     // Add mo
//     Order(
//       id: '1',
//       title: 'Reworked Carhartt Hoodie Jacket',
//       imageUrl: PreluraIcons.Image,
//       price: 80.00,
//       status: 'Sale cancelled!',
//       type: 'Bough',
//     ),
//     // Add mo\
//     Order(
//       id: '1',
//       title: 'Reworked Carhartt Hoodie Jacket',
//       imageUrl: PreluraIcons.electronics,
//       price: 80.00,
//       status: 'Sale completed!',
//       type: 'Sold',
//     ),
//     // Add mo
//     Order(
//       id: '1',
//       title: 'Reworked Carhartt Hoodie Jacket',
//       imageUrl: PreluraIcons.home,
//       price: 80.00,
//       status: 'Sale cancelled',
//       type: 'Sold',
//     ),
//     // Add mo
//     Order(
//       id: '1',
//       title: 'Reworked Carhartt Hoodie Jacket',
//       imageUrl: PreluraIcons.productImage,
//       price: 80.00,
//       status: 'in progress',
//       type: 'Bought',
//     ),
//     // Add mo
//     Order(
//       id: '1',
//       title: 'Reworked Carhartt Hoodie Jacket',
//       imageUrl: PreluraIcons.kids,
//       price: 80.00,
//       status: 'Sale completed!',
//       type: 'Sold',
//     ),
//     // Add mo
//     Order(
//       id: '1',
//       title: 'Reworked Carhartt Hoodie Jacket',
//       imageUrl: PreluraIcons.women,
//       price: 80.00,
//       status: 'Sale completed!',
//       type: 'Bought',
//     ),
//     // Add mo
//     // Add more orders here...
//   ];
// });
//
// // Active Tab: Sold or Bought
// final activeTabProvider = StateProvider<String>((ref) => 'Sold');
//
// // Active Filter: All, In Progress, Cancelled, Completed
// final activeFilterProvider = StateProvider<String>((ref) => 'All');
//
// // Filtered Orders
// final filteredOrdersProvider = Provider<List<Order>>((ref) {
//   final orders = ref.watch(ordersProvider);
//   final activeTab = ref.watch(activeTabProvider);
//   final activeFilter = ref.watch(activeFilterProvider);
//
//   return orders.where((order) {
//     if (order.type != activeTab) return false;
//     if (activeFilter == 'All') return true;
//     return order.status.toLowerCase().contains(activeFilter.toLowerCase());
//   }).toList();
// });
