import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../res/colors.dart'; // Replace with your actual colors.dart path
import '../provider/main_provider.dart';
import 'order_tab_view.dart';

class OrderSubTabs extends ConsumerStatefulWidget {
  final String type;

  const OrderSubTabs({super.key, required this.type});

  @override
  ConsumerState<OrderSubTabs> createState() => _OrderSubTabsState();
}

class _OrderSubTabsState extends ConsumerState<OrderSubTabs>
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
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                final filters = [
                  'All',
                  'In Progress',
                  'Cancelled',
                  'Completed'
                ];
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _tabController.animateTo(index);
                      ref.read(activeFilterProvider.notifier).state =
                          filters[index];
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
            fontSize: 16,
            color: isSelected
                ? PreluraColors.activeColor
                : Theme.of(context).textTheme.bodyMedium?.color,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
