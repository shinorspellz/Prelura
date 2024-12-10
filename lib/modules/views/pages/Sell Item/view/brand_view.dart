import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/controller/product/brands_provider.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/app_radio.dart';
import 'package:prelura_app/modules/views/widgets/bottom_sheet.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';

import '../../../widgets/SearchWidget.dart';
import '../provider/brand_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class BrandSelectionPage extends ConsumerStatefulWidget {
  const BrandSelectionPage({super.key});

  @override
  ConsumerState<BrandSelectionPage> createState() => _BrandSelectionPageState();
}

class _BrandSelectionPageState extends ConsumerState<BrandSelectionPage> {
  final controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      // setState(() => autoScroll = false);
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.sizeOf(context).height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(brandsProvider).isLoading) return;
        ref.read(brandsProvider.notifier).fetchMoreData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedBrand = ref.watch(sellItemProvider).brand;

    return Scaffold(
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          centerTitle: true,
          appbarTitle: "Brand"),
      body: ref.watch(brandsProvider).when(
            data: (brands) => CustomScrollView(
              controller: controller,
              slivers: [
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Searchwidget(
                        hintText: "Find a brand",
                        obscureText: false,
                        shouldReadOnly: false,
                        enabled: true,
                        showInputBorder: true,
                        autofocus: false,
                        cancelButton: true),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return PreluraRadio(
                        title: brands[index].name,
                        value: brands[index].name,
                        groupValue: selectedBrand?.name,
                        onChanged: (value) {
                          ref
                              .read(sellItemProvider.notifier)
                              .selectBrand(brands[index]);
                          context.back();
                        },
                      );
                    },
                    childCount: brands.length, // Number of items in the list
                  ),
                ),
                if (ref.watch(brandsProvider.notifier).canLoadMore())
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 25,
                            width: 25,
                            child: LoadingWidget(),
                          ),
                          10.horizontalSpacing,
                          const Text('Loading more...')
                        ],
                      ),
                    ),
                  )
              ],
            ),
            error: (e, _) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(e.toString()),
                  TextButton.icon(
                    onPressed: () => ref.invalidate(brandsProvider),
                    label: const Text('Retry'),
                    icon: const Icon(Icons.refresh_rounded),
                  ),
                ],
              ),
            ),
            loading: () => const Center(
              child: LoadingWidget(),
            ),
          ),
    );
  }
}
