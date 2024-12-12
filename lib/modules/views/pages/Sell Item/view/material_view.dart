import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/controller/product/materials_provider.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/brand_view.dart';
import 'package:prelura_app/modules/views/widgets/SearchWidget.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/app_checkbox.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';

import '../../../../../res/colors.dart';
import '../../../widgets/gesture_navigator.dart';
import '../provider/material_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class MaterialSelectionScreen extends ConsumerStatefulWidget {
  const MaterialSelectionScreen({super.key});

  @override
  ConsumerState<MaterialSelectionScreen> createState() => _MaterialSelectionScreenState();
}

class _MaterialSelectionScreenState extends ConsumerState<MaterialSelectionScreen> {
  final controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      // setState(() => autoScroll = false);
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.sizeOf(context).height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(materialsProvider).isLoading) return;
        if (searchQuery.isNotEmpty) return;
        ref.read(materialsProvider.notifier).fetchMoreData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String searchQuery = '';
  @override
  Widget build(BuildContext context) {
    final materialState = ref.watch(sellItemProvider).selectedMaterials;
    final notifier = ref.read(sellItemProvider.notifier);

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: "Material (recommended)",
      ),
      body: ref.watch(materialsProvider).when(
            data: (materials) => CustomScrollView(
              controller: controller,
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Searchwidget(
                      hintText: "Find a brand",
                      obscureText: false,
                      shouldReadOnly: false,
                      enabled: true,
                      showInputBorder: true,
                      autofocus: false,
                      cancelButton: true,
                      onChanged: (val) {
                        searchQuery = val;
                        setState(() {});
                      },
                    ),
                  ),
                ),
                if (searchQuery.isNotEmpty) ...[
                  ref.watch(searchMaterial(searchQuery)).when(
                        data: (searchMaterials) => SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              final isSelected = notifier.isMaterialSelected(searchMaterials[index]);
                              return PreluraCheckBox(
                                isChecked: isSelected,
                                onChanged: (isChecked) {
                                  if (isChecked == true || isSelected) {
                                    notifier.toggleMaterial(searchMaterials[index]);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          "You can only select up to 2 colours.",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  }
                                },
                                title: searchMaterials[index].name,
                              );
                              // return PreluraRadio(
                              //   title: brands[index].name,
                              //   value: brands[index].name,
                              //   groupValue: selectedBrand?.name,
                              //   onChanged: (value) {
                              //     ref.read(sellItemProvider.notifier).selectBrand(brands[index]);
                              //     context.back();
                              //   },
                              // );
                            },
                            childCount: searchMaterials.length, // Number of items in the list
                          ),
                        ),
                        error: (e, _) => SliverToBoxAdapter(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(e.toString()),
                                TextButton.icon(
                                  onPressed: () => ref.invalidate(materialProvider),
                                  label: const Text('Retry'),
                                  icon: const Icon(Icons.refresh_rounded),
                                ),
                              ],
                            ),
                          ),
                        ),
                        loading: () => const SliverToBoxAdapter(
                          child: LoadingWidget(),
                        ),
                      ),
                ] else
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        final isSelected = notifier.isMaterialSelected(materials[index]);
                        return PreluraCheckBox(
                          isChecked: isSelected,
                          onChanged: (isChecked) {
                            if (isChecked == true || isSelected) {
                              notifier.toggleMaterial(materials[index]);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    "You can only select up to 2 colours.",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          },
                          title: materials[index].name,
                        );
                      },
                      childCount: materials.length, // Number of items in the list
                    ),
                  ),
                if (ref.watch(materialsProvider.notifier).canLoadMore())
                  if (searchQuery.isEmpty)
                    const SliverToBoxAdapter(
                      child: PaginationLoadingIndicator(),
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
                    onPressed: () => ref.invalidate(materialProvider),
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

    // return Scaffold(
    //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    //   appBar: PreluraAppBar(
    //       leadingIcon: IconButton(
    //         icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
    //         onPressed: () => context.router.popForced(),
    //       ),
    //       centerTitle: true,
    //       appbarTitle: "Material (recommended)"),
    //   body: Container(
    //     color: Theme.of(context).scaffoldBackgroundColor,
    //     child: Column(
    //       children: [
    //         Expanded(
    //           child: ListView(
    //             children: materials.map((entry) {
    //               final value = entry;
    //               final isSelected = notifier.isMaterialSelected(value);

    //               return PreluraCheckBox(
    //                 isChecked: isSelected,
    //                 onChanged: (isChecked) {
    //                   if (isChecked == true || isSelected) {
    //                     notifier.toggleMaterial(value);
    //                   } else {
    //                     ScaffoldMessenger.of(context).showSnackBar(
    //                       const SnackBar(
    //                         content: Text(
    //                           "You can only select up to 2 colours.",
    //                           style: TextStyle(color: Colors.white),
    //                         ),
    //                         backgroundColor: Colors.red,
    //                       ),
    //                     );
    //                   }
    //                 },
    //                 title: value,
    //               );
    //             }).toList(),
    //           ),
    //         ),
    //         const SizedBox(height: 16),
    //         Padding(
    //           padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16, bottom: 46),
    //           child: ElevatedButton(
    //             onPressed: materialState.isNotEmpty
    //                 ? () {
    //                     // Pass the data back or proceed to the next screen
    //                     context.router.popForced();
    //                   }
    //                 : null,
    //             style: ElevatedButton.styleFrom(
    //               backgroundColor: PreluraColors.activeColor,
    //               padding: const EdgeInsets.symmetric(vertical: 16),
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(8),
    //               ),
    //             ),
    //             child: Center(
    //               child: Text(
    //                 "Done",
    //                 style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PreluraColors.white),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
