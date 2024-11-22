import 'package:flutter/material.dart';
import '../../../../../../res/colors.dart'; // Replace with your actual colors.dart path
import 'order_tab_view.dart';

class OrderSubTabs extends StatefulWidget {
  final String type;

  const OrderSubTabs({Key? key, required this.type}) : super(key: key);

  @override
  State<OrderSubTabs> createState() => _OrderSubTabsState();
}

class _OrderSubTabsState extends State<OrderSubTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _tabController.animateTo(index);
                    },
                    child: _buildTab(index),
                  ),
                );
              }),
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              OrdersTabView(type: widget.type, status: 'All'),
              OrdersTabView(type: widget.type, status: 'In Progress'),
              OrdersTabView(type: widget.type, status: 'Cancelled'),
              OrdersTabView(type: widget.type, status: 'Completed'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTab(int index) {
    final isSelected = _tabController.index == index;
    final labels = ['All', 'In Progress', 'Cancelled', 'Completed'];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected
            ? PreluraColors.activeColor.withOpacity(0.2)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color:
              isSelected ? PreluraColors.activeColor : PreluraColors.greyColor,
          width: 2,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: Text(
          labels[index],
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? PreluraColors.activeColor : PreluraColors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
