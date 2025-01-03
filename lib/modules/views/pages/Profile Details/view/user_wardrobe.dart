import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/modules/controller/chat/conversations_provider.dart';
import 'package:prelura_app/modules/controller/product/brands_provider.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/model/product/user_product_grouping/user_product_grouping.dart';
import 'package:prelura_app/modules/views/pages/Chat/view/chat_view.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/provider/tab_controller.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/widgets/filter_and_sort.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/widgets/user_scrollable_list.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/provider/search_provider.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/view/search_result.dart';
import 'package:prelura_app/modules/views/widgets/SearchWidget.dart';
import 'package:prelura_app/modules/views/widgets/display_section.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/modules/views/widgets/menu_card.dart';
import 'package:prelura_app/modules/views/widgets/profile_card.dart';
import 'package:prelura_app/modules/views/widgets/rating.dart';
import 'package:prelura_app/res/render_svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/colors.dart';
import '../../../../../res/helper_function.dart';
import '../../../../../res/images.dart';
import '../../../../model/product/categories/category_model.dart';
import '../../../shimmers/grid_shimmer.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_button_with_loader.dart';
import '../../../widgets/auth_text_field.dart';
import '../../../widgets/bottom_sheet.dart';
import '../widgets/show_filter_modal.dart';
import '../widgets/user_popular_brand.dart';

// enum UserFilterTypes {
//   size('Size'),
//   brand('Brand'),
//   condition('Condition'),
//   // category('Category'),
//   style('Style');
//   // color('Color');

//   const UserFilterTypes(this.simpleName);

//   final String simpleName;
// }

class UserWardrobe extends ConsumerStatefulWidget {
  const UserWardrobe({super.key, this.username});
  final String? username;

  @override
  _UserWardrobeScreenState createState() => _UserWardrobeScreenState();
}

class _UserWardrobeScreenState extends ConsumerState<UserWardrobe> {
  final RefreshController _refreshController = RefreshController();
  bool isSelected = false;
  String selectedItem = "";
  bool isActive = false;
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  void initState() {
    super.initState();
    final user = ref
        .read((widget.username != null
            ? otherUserProfile(widget.username!)
            : userProvider))
        .value;

    ref.read(userProductGroupingByBrandProvider(
        (user?.id ?? 0, Enum$ProductGroupingEnum.BRAND)));
  }

  Future<void> _onRefresh() async {
    try {
      if (widget.username != null) {
        ref.refresh(otherUserProfile(widget.username!));
        await ref.refresh(userProduct(widget.username!).future);
        await ref.refresh(followersTotalProvider.future);
        await ref.refresh(followingTotalProvider.future);
      } else {
        final user = ref.refresh(userProvider).valueOrNull;

        await ref.refresh(userProduct(user?.username).future);
      } // Re-trigger the provider
      _refreshController.refreshCompleted(); // Notify SmartRefresher of success
    } catch (e) {
      _refreshController.refreshFailed(); // Notify SmartRefresher of failure
    }
  }

  void _onLoading() async {
    try {
      // Fetch more products from the repository
      if (widget.username != null) {
        ref.refresh(otherUserProfile(widget.username!));
        await ref.refresh(userProduct(widget.username!).future);
      } else {
        final user = await ref.refresh(userProvider.future);
        await ref.refresh(userProduct(user.username).future);
      } //
      _refreshController.loadComplete();
    } catch (e) {
      _refreshController.loadFailed();
    }
  }

  bool expandedCategories = false;
  final ExpansionTileController controller = ExpansionTileController();

  List<CategoryGroupType> subCategoriesIntersection(
      CategoryGroupType e, int userId) {
    List<CategoryGroupType> result = [];
    final subCategories = ref
            .watch(categoryProvider)
            .valueOrNull
            ?.where((x) => x.name.toLowerCase() == e.name.toLowerCase())
            .firstOrNull
            ?.subCategory ??
        [];
    final userSubCategories = ref
            .watch(userProductGroupingBySubCategoryProvider(userId))
            .valueOrNull ??
        [];
    // ?.map((e) => CategoryGroupType(id: int.tryParse(e.id.toString()), name: e.name, count: 0));
    for (var subCat in subCategories) {
      for (var groupSub in userSubCategories) {
        if (subCat.name == groupSub.name) {
          result.add(groupSub);
        }
      }
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    final wordsToRemove = ["electronics", "home", "entertainment", "pet care"];
    final user = ref.watch((widget.username != null
        ? otherUserProfile(widget.username!)
        : userProvider));

    return user.maybeWhen(
        orElse: () => LoadingWidget(),
        data: (user) {
          final value = ref
              .watch(userProductGroupingByCategoryProvider(user.id))
              .valueOrNull;
          // final userSubCategories = ref.watch(userProductGroupingBySubCategoryProvider(user!.id)).valueOrNull;
          final List<CategoryGroupType> categories = value == null
              ? []
              : value
                  .where((word) =>
                      !wordsToRemove.contains(word.name.toLowerCase()))
                  .toList();

          return SmartRefresher(
            controller: _refreshController,
            onRefresh: _onRefresh,
            onLoading: _onLoading,
            enablePullDown: true,
            enablePullUp: false,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (widget.username != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: ProfileCardWidget(
                        user: user,
                      ),
                    )
                  else
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                      child: ProfileCardWidget(),
                    ),
                  Column(
                    children: [
                      if (user.bio != null)
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 12),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      user.bio ?? '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -20,
                              right: 10,
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: PreluraColors.activeColor,
                                child: ref.watch(userNotfierProvider).isLoading
                                    ? const SizedBox(
                                        height: 16,
                                        width: 16,
                                        child: LoadingWidget(),
                                      )
                                    : GestureDetector(
                                        onTap: () {
                                          // VBottomSheetComponent.customBottomSheet(context: context, child: child)
                                          VBottomSheetComponent
                                              .actionBottomSheet(
                                            context: context,
                                            actions: [
                                              VBottomSheetItem(
                                                  onTap: (context) {
                                                    Navigator.pop(context);
                                                    VBottomSheetComponent
                                                        .actionBottomSheet(
                                                      context: context,
                                                      actions: [
                                                        VBottomSheetItem(
                                                            onTap:
                                                                (context) async {
                                                              Navigator.pop(
                                                                  context);
                                                              final photo =
                                                                  await ImagePicker()
                                                                      .pickImage(
                                                                          source:
                                                                              ImageSource.gallery);

                                                              if (photo == null)
                                                                return;
                                                              await ref
                                                                  .read(userNotfierProvider
                                                                      .notifier)
                                                                  .updateProfilePicture(
                                                                      File(photo
                                                                          .path));
                                                              ref
                                                                  .read(
                                                                      userNotfierProvider)
                                                                  .whenOrNull(
                                                                    error: (e,
                                                                            _) =>
                                                                        context.alert(
                                                                            'An error occured while uploading profile image'),
                                                                    data: (_) =>
                                                                        HelperFunction.showToast(
                                                                            message:
                                                                                'Profile photo updated!'),
                                                                  );
                                                            },
                                                            title: 'Gallery'),
                                                        VBottomSheetItem(
                                                            onTap:
                                                                (context) async {
                                                              Navigator.pop(
                                                                  context);
                                                              final photo =
                                                                  await ImagePicker()
                                                                      .pickImage(
                                                                          source:
                                                                              ImageSource.camera);

                                                              if (photo == null)
                                                                return;
                                                              await ref
                                                                  .read(userNotfierProvider
                                                                      .notifier)
                                                                  .updateProfilePicture(
                                                                      File(photo
                                                                          .path));
                                                              ref
                                                                  .read(
                                                                      userNotfierProvider)
                                                                  .whenOrNull(
                                                                    error: (e,
                                                                            _) =>
                                                                        context.alert(
                                                                            'An error occured while uploading profile image'),
                                                                    data: (_) =>
                                                                        HelperFunction.showToast(
                                                                            message:
                                                                                'Profile photo updated!'),
                                                                  );
                                                            },
                                                            title: 'Camera'),
                                                      ],
                                                    );
                                                  },
                                                  title: 'Update Picture'),
                                              VBottomSheetItem(
                                                  onTap: (context) {
                                                    Navigator.pop(context);
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        final controller =
                                                            TextEditingController(
                                                                text: user.bio);
                                                        return AlertDialog(
                                                          title: const Text(
                                                              'Update Bio'),
                                                          content: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              PreluraAuthTextField(
                                                                label: 'Bio',
                                                                labelStyle: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium
                                                                    ?.copyWith(
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                hintStyle: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium
                                                                    ?.copyWith(
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                controller:
                                                                    controller,
                                                                maxLines: null,
                                                              ),
                                                              10.verticalSpacing,
                                                              Consumer(builder:
                                                                  (context, ref,
                                                                      _) {
                                                                return PreluraButtonWithLoader(
                                                                  showLoadingIndicator: ref
                                                                      .watch(
                                                                          userNotfierProvider)
                                                                      .isLoading,
                                                                  onPressed:
                                                                      () async {
                                                                    await ref
                                                                        .read(userNotfierProvider
                                                                            .notifier)
                                                                        .updateProfile(
                                                                            bio:
                                                                                controller.text);
                                                                    ref
                                                                        .read(
                                                                            userNotfierProvider)
                                                                        .whenOrNull(
                                                                          error: (e, _) =>
                                                                              context.alert('An error occured while updating'),
                                                                          data:
                                                                              (_) {
                                                                            Navigator.pop(context);
                                                                            HelperFunction.context =
                                                                                context;
                                                                            HelperFunction.showToast(message: 'Bio updated!');
                                                                          },
                                                                        );
                                                                  },
                                                                  buttonTitle:
                                                                      'Update',
                                                                  // width: MediaQuery.sizeOf(context).width,
                                                                );
                                                              })
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  title: 'Update Bio')
                                            ],
                                          );
                                        },
                                        child: SizedBox(
                                          height: 20,
                                          width: 20,
                                          // decoration: BoxDecoration(
                                          //   shape: BoxShape.circle,
                                          // ),
                                          child: Icon(
                                            Icons.edit,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                              ),
                            )
                          ],
                        ),

                      // Social and Additional Info Section
                      UserScrollableList(
                        user: user,
                      ),
                      if (selectedItem.isNotEmpty)
                        MenuCard(
                            icon: isSelected
                                ? Icon(Icons.arrow_back_ios_rounded,
                                    size: 18, color: PreluraColors.primaryColor)
                                : null,
                            title: selectedItem.isNotEmpty
                                ? "Viewing"
                                : widget.username != null
                                    ? 'Categories from this seller'
                                    : "Categories",
                            sideText:
                                selectedItem.isNotEmpty ? selectedItem : null,
                            sideTextColor: PreluraColors.primaryColor,
                            textColor: PreluraColors.grey,
                            rightArrow: !isSelected,
                            // borderbottom: false,
                            trailingIcon: isSelected
                                ? null
                                : selectedItem.isNotEmpty
                                    ? Icon(Icons.cancel_rounded,
                                        color: PreluraColors.grey)
                                    : Icon(Icons.arrow_forward_ios_rounded,
                                        color: PreluraColors.grey, size: 18),
                            onTap: () {
                              isSelected = !isSelected;
                              selectedItem = "";
                              expandedCategories = false;
                              setState(() {});
                              ref.invalidate(filterUserProductProvider);
                            })
                      else
                        ExpansionTile(
                          title: Text(
                            widget.username != null
                                ? 'Categories from this seller'
                                : "Categories",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: PreluraColors.grey,
                                ),
                          ),
                          tilePadding:
                              EdgeInsets.only(right: 15, left: 15, top: 10),
                          childrenPadding: EdgeInsets.symmetric(horizontal: 5),
                          minTileHeight: 40,
                          onExpansionChanged: (expanded) =>
                              setState(() => expandedCategories = expanded),
                          controller: controller,
                          expansionAnimationStyle: AnimationStyle(
                            duration: Duration(milliseconds: 300),
                          ),
                          children: categories
                              .map((e) => Container(
                                    decoration: BoxDecoration(
                                        border: Border.symmetric(
                                      horizontal: BorderSide(
                                        color: context.theme.dividerColor,
                                        width: 1,
                                      ),
                                    )),
                                    child: ExpansionTile(
                                        title: RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                            text: e.name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          TextSpan(
                                            text:
                                                " (${e.count} ${(e.count > 1 || e.count == 0) ? "items" : "item"})",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  color: PreluraColors.grey,
                                                ),
                                          )
                                        ])),
                                        tilePadding: EdgeInsets.only(
                                            right: 15,
                                            left: 15,
                                            top: 8,
                                            bottom: 8),
                                        // childrenPadding: EdgeInsets.symmetric(horizontal: 5),
                                        minTileHeight: 38,
                                        // onExpansionChanged: (expanded) => setState(() => expandedCategories = expanded),
                                        // controller: controller,
                                        expansionAnimationStyle: AnimationStyle(
                                          duration: Duration(milliseconds: 300),
                                        ),
                                        children:
                                            // ref
                                            //         .watch(categoryProvider)
                                            //         .valueOrNull
                                            //         ?.where((x) => x.name.toLowerCase() == e.name.toLowerCase())
                                            //         .firstOrNull
                                            //         ?.subCategory
                                            //         ?.map((e) => CategoryGroupType(id: int.tryParse(e.id.toString()), name: e.name, count: 0))
                                            //         .toSet()
                                            //         .intersection((userSubCategories ?? []).toSet())
                                            subCategoriesIntersection(
                                                        e, user.id)
                                                    .map(
                                                      (x) => Column(
                                                        children: [
                                                          Divider(
                                                            thickness: 2,
                                                          ),
                                                          MenuCard(
                                                            title: x.name,
                                                            sideTextColor:
                                                                PreluraColors
                                                                    .grey,
                                                            borderbottom: false,
                                                            // sideText: "(${e.count} ${(e.count > 1 || e.count == 0) ? "items" : "item"})",
                                                            trailingIcon:
                                                                Container(
                                                              height: 15,
                                                              width: 15,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(3),
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                border:
                                                                    Border.all(
                                                                  width: 2,
                                                                  color: selectedItem ==
                                                                          x.name
                                                                      ? Theme.of(
                                                                              context)
                                                                          .primaryColor
                                                                      : Colors
                                                                          .grey,
                                                                ),
                                                              ),
                                                              child: Container(
                                                                height: 15,
                                                                width: 15,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: selectedItem ==
                                                                          x.name
                                                                      ? Theme.of(
                                                                              context)
                                                                          .primaryColor
                                                                      : Colors
                                                                          .transparent,
                                                                ),
                                                              ),
                                                            ),
                                                            // RenderSvg(svgPath: PreluraIcons.arrowDown_svg, svgHeight: 16, svgWidth: 16, color: PreluraColors.grey),
                                                            onTap: () {
                                                              selectedItem =
                                                                  x.name;
                                                              isSelected =
                                                                  false;
                                                              setState(() {});
                                                              ref
                                                                  .read(filterUserProductProvider
                                                                      .notifier)
                                                                  .updateFilter(
                                                                      FilterTypes
                                                                          .category,
                                                                      e.name);

                                                              controller
                                                                  .collapse();
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                    .toList() ??
                                                []),
                                  ))
                              .toList(),
                        ),
                      if (!expandedCategories && selectedItem.isEmpty)
                        Divider(
                          thickness: 1,
                        ),

                      // if (isSelected) ...[
                      //   ListView.builder(
                      //     shrinkWrap: true,
                      //     itemCount: categories.length,
                      //     itemBuilder: (_, index) {
                      //       final cat = categories[index];

                      //       return MenuCard(
                      //         title: cat.name,
                      //         sideTextColor: PreluraColors.grey,
                      //         sideText: "(${cat.count} ${(cat.count > 1 || cat.count == 0) ? "items" : "item"})",
                      //         trailingIcon: RenderSvg(svgPath: PreluraIcons.arrowDown_svg, svgHeight: 16, svgWidth: 16, color: PreluraColors.grey),
                      //         onTap: () {
                      //           selectedItem = cat.name;
                      //           isSelected = false;
                      //           setState(() {});
                      //           ref.read(userProductFilter.notifier).state = Input$ProductFiltersInput(category: cat.id);
                      //         },
                      //       );
                      //     },
                      //   )
                      // ],
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 6),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.username != null
                                    ? "Brands from this seller"
                                    : "Top Brands",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: PreluraColors.grey),
                              ),
                              // RenderSvgWithColor2(
                              //     svgPath: PreluraIcons.search_glass_svg),
                              // ],
                              if (!isActive)
                                GestureDetector(
                                    onTap: () {
                                      isActive = true;
                                      setState(() {});
                                    },
                                    child: Icon(Icons.search,
                                        color: PreluraColors.primaryColor)),
                              if (isActive)
                                AnimatedContainer(
                                  width: 54.5.w,
                                  color: Colors.transparent,
                                  alignment: Alignment.centerRight,
                                  duration: const Duration(milliseconds: 150),
                                  child: Searchwidget(
                                    obscureText: false,
                                    shouldReadOnly: false,
                                    enabled: true,
                                    showInputBorder: true,
                                    autofocus: true,
                                    cancelButton: true,
                                    minWidth: 50.w,
                                    hidePrefix: true,
                                    onChanged: (value) {
                                      ref
                                          .read(userProductSearchQuery.notifier)
                                          .state = value;
                                    },
                                    onCancel: () {
                                      isActive = false;
                                      setState(() {});
                                      ref.invalidate(userProductSearchQuery);
                                    },
                                  ),
                                )
                            ]),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: UserPopularBrand(
                          userId: user.id,
                        ),
                      ),

                      FilterAndSort(
                        userId: user.id,
                      ),

                      20.verticalSpacing,
                      if (ref
                              .watch(userProduct(user.username))
                              .valueOrNull
                              ?.where((e) => e.isFeatured ?? false)
                              .toList()
                              .isNotEmpty ??
                          false) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Featured',
                                style: context.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              10.verticalSpacing,
                              ref.watch(userProduct(user.username)).when(
                                    skipLoadingOnRefresh: false,
                                    data: (products) => DisplaySection(
                                      products: products
                                          .where((e) => e.isFeatured ?? false)
                                          .toList(),
                                      isInProduct: false,
                                    ),
                                    error: (e, _) {
                                      return Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(e.toString()),
                                            TextButton.icon(
                                              onPressed: () {
                                                // log(e.toString(), stackTrace: _);
                                                ref.invalidate(userProduct);
                                              },
                                              label: const Text('Retry'),
                                              icon: const Icon(
                                                  Icons.refresh_rounded),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    loading: () => GridShimmer(),
                                  ),
                              10.verticalSpacing,
                            ],
                          ),
                        ),
                      ],

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ref.watch(userProduct(user.username)).when(
                              skipLoadingOnRefresh: false,
                              data: (products) => DisplaySection(
                                products: products,
                                isInProduct: false,
                              ),
                              error: (e, _) {
                                return Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(e.toString()),
                                      TextButton.icon(
                                        onPressed: () {
                                          // log(e.toString(), stackTrace: _);
                                          ref.invalidate(userProduct);
                                        },
                                        label: const Text('Retry'),
                                        icon: const Icon(Icons.refresh_rounded),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              loading: () => GridShimmer(),
                            ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
