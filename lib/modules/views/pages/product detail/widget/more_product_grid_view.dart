import 'package:flutter/material.dart';
import 'package:prelura_app/modules/views/widgets/card.dart';
import 'package:prelura_app/modules/views/widgets/display_section.dart';

class MoreProductGridView extends StatefulWidget {
  const MoreProductGridView({super.key});

  @override
  _MoreProductGridViewState createState() => _MoreProductGridViewState();
}

class _MoreProductGridViewState extends State<MoreProductGridView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
        // TabBar Section
        TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.teal,
          tabs: const [
            Tab(text: "Member's items"),
            Tab(text: "Similar items"),
          ],
        ),
        TabBarView(controller: _tabController, children: const [
          Center(child: Text("Similar items content")),
          Center(child: Text("Similar items content")),
        ])

        // TabBarView Section
        // Expanded(
        //   child: TabBarView(
        //     controller: _tabController,
        //     children: [
        //       // _buildMemberItemsTab(context),
        //       Center(child: Text("Similar items content")),
        //       Center(child: Text("Similar items content")),
        //     ],
        //   ),
        // ),
      ],
    );
  }

  Widget _buildMemberItemsTab(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Shop Bundles Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shop bundles",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "Save on postage",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          // Grid View Section
          const DisplaySection(),
        ],
      ),
    );
  }
}
