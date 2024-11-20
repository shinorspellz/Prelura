import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [Text("Onbox"), Icon(Icons.edit)],
        ),
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Messages",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "Notifications",
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Center(
            child: Text(
              "Home Tab Content",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Center(
            child: Text(
              "Settings Tab Content",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
