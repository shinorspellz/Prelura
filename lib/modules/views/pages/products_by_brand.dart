import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';

@RoutePage()
class ProductsByBrandPage extends StatefulWidget {
  const ProductsByBrandPage({super.key, required this.title});
  final String title;

  @override
  State<ProductsByBrandPage> createState() => _ProductsByBrandPageState();
}

class _ProductsByBrandPageState extends State<ProductsByBrandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          centerTitle: true,
          appbarTitle: widget.title),
    );
  }
}
