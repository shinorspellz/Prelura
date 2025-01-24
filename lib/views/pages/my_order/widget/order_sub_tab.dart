import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../res/colors.dart';
import 'order_tab_view.dart'; // Replace with your actual colors.dart path

class OrderSubTabs extends StatefulHookConsumerWidget {
  final String type;

  const OrderSubTabs({super.key, required this.type});

  @override
  ConsumerState<OrderSubTabs> createState() => _OrderSubTabsState();
}

class _OrderSubTabsState extends ConsumerState<OrderSubTabs>
// with SingleTickerProviderStateMixin
{
  // late TabController _tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> activeIndex = useState(0);
    return Column(
      children: [
        Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) {
              final filters = ['All', 'In Progress', 'Cancelled', 'Completed'];
              return GestureDetector(
                onTap: () {
                  activeIndex.value = index;
                  // _tabController.animateTo(index);
                  // ref.read(activeFilterProvider.notifier).state =
                  //     filters[index];
                },
                child: _buildTab(
                  label: filters[index],
                  isSelected: activeIndex.value == index,
                ),
              );
            }),
          ),
        ),
        Expanded(
          //   child: TabBarView(
          //     controller: _tabController,
          //     children: [
          //       OrdersTabView(type: widget.type, status: 'All'),
          //       OrdersTabView(type: widget.type, status: 'In Progress'),
          //       OrdersTabView(type: widget.type, status: 'Cancelled'),
          child: OrdersTabView(),
          //     ],
          //   ),
          //   child: ListView.separated(itemBuilder: (cxt, index){
          //     return
          //   }, separatorBuilder:  (_, __){
          //     return addVerticalSpacing(10);
          //   }, itemCount: 10,),
        ),
      ],
    );
  }

  Widget _buildTab({required bool isSelected, required String label}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      constraints: BoxConstraints(
        minWidth: 80,
      ),
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
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: Text(
          label,
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
