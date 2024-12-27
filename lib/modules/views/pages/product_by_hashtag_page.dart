import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';

@RoutePage()
class ProductByHashtagPage extends StatelessWidget {
  const ProductByHashtagPage({super.key, required this.hashtag});
  final String hashtag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: hashtag,
        leadingIcon: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}
