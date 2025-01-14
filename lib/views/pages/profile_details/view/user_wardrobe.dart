import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/product/user_product_grouping/user_product_grouping.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/res/render_svg.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/profile_details/widgets/filter_and_sort.dart';
import 'package:prelura_app/views/pages/profile_details/widgets/user_scrollable_list.dart';
import 'package:prelura_app/views/pages/search_result/provider/search_provider.dart';
import 'package:prelura_app/views/pages/search_result/view/search_result.dart';
import 'package:prelura_app/views/widgets/SearchWidget.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';
import 'package:prelura_app/views/widgets/display_section.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';
import 'package:prelura_app/views/widgets/menu_card.dart';
import 'package:prelura_app/views/widgets/profile_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sizer/sizer.dart';

import '../../../../res/colors.dart';
import '../../../../res/helper_function.dart';
import '../../../shimmers/grid_shimmer.dart';
import '../../../widgets/app_button_with_loader.dart';
import '../../../widgets/auth_text_field.dart';
import '../../../widgets/bottom_sheet.dart';
import '../widgets/user_popular_brand.dart';

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
  bool isBrandActive = false;
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

    final productLength = user?.value?.listing;
    log(productLength.toString(), name: "Profile details");

    return user.maybeWhen(
        orElse: () => LoadingWidget(),
        data: (user) {
          final value = ref
              .watch(userProductGroupingByCategoryProvider(user.id))
              .valueOrNull;
          log(":::User location ::${user.location?.locationName}");
          log(":::User location ::${user.username}");
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
                  Stack(clipBehavior: Clip.none, children: [
                    // if (widget.username != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: ProfileCardWidget(
                        user: user,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Positioned(
                      bottom: -28,
                      right: 0,
                      child: Container(
                        margin: EdgeInsets.all(16),
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: PreluraColors.activeColor,
                          child: ref.watch(userNotfierProvider).isLoading
                              ? const SizedBox(
                                  height: 10,
                                  width: 10,
                                  child: LoadingWidget(
                                    height: 10,
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    // VBottomSheetComponent.customBottomSheet(context: context, child: child)
                                    VBottomSheetComponent.actionBottomSheet(
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
                                                      onTap: (context) async {
                                                        Navigator.pop(context);
                                                        final photo =
                                                            await ImagePicker()
                                                                .pickImage(
                                                                    source: ImageSource
                                                                        .gallery);

                                                        if (photo == null)
                                                          return;
                                                        await ref
                                                            .read(
                                                                userNotfierProvider
                                                                    .notifier)
                                                            .updateProfilePicture(
                                                                File(photo
                                                                    .path));
                                                        ref
                                                            .read(
                                                                userNotfierProvider)
                                                            .whenOrNull(
                                                              error: (e, _) =>
                                                                  context.alert(
                                                                      'An error occured while uploading profile image'),
                                                              data: (_) =>
                                                                  HelperFunction
                                                                      .showToast(
                                                                          message:
                                                                              'Profile photo updated!'),
                                                            );
                                                      },
                                                      title: 'Gallery'),
                                                  VBottomSheetItem(
                                                      onTap: (context) async {
                                                        Navigator.pop(context);
                                                        final photo =
                                                            await ImagePicker()
                                                                .pickImage(
                                                                    source: ImageSource
                                                                        .camera);

                                                        if (photo == null)
                                                          return;
                                                        await ref
                                                            .read(
                                                                userNotfierProvider
                                                                    .notifier)
                                                            .updateProfilePicture(
                                                                File(photo
                                                                    .path));
                                                        ref
                                                            .read(
                                                                userNotfierProvider)
                                                            .whenOrNull(
                                                              error: (e, _) =>
                                                                  context.alert(
                                                                      'An error occured while uploading profile image'),
                                                              data: (_) =>
                                                                  HelperFunction
                                                                      .showToast(
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
                                                          MainAxisSize.min,
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
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                          hintStyle: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .bodyMedium
                                                              ?.copyWith(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                          controller:
                                                              controller,
                                                          maxLines: null,
                                                        ),
                                                        10.verticalSpacing,
                                                        Consumer(builder:
                                                            (context, ref, _) {
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
                                                                      bio: controller
                                                                          .text);
                                                              ref
                                                                  .read(
                                                                      userNotfierProvider)
                                                                  .whenOrNull(
                                                                    error: (e,
                                                                            _) =>
                                                                        context.alert(
                                                                            'An error occured while updating'),
                                                                    data: (_) {
                                                                      Navigator.pop(
                                                                          context);
                                                                      HelperFunction
                                                                              .context =
                                                                          context;
                                                                      HelperFunction.showToast(
                                                                          message:
                                                                              'Bio updated!');
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
                                  child: Container(
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                      color: PreluraColors.primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    )
                  ]),
                  Column(children: [
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
                                            fontSize: getDefaultSize(),
                                            fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(height: 16),
                              ],
                            ),
                          ),
                        ],
                      ),

                    // Social and Additional Info Section
                    UserScrollableList(
                      user: user,
                    ),
                    if (productLength! > 0) ...[
                      if (selectedItem.isNotEmpty) ...[
                        buildDivider(context),
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
                              isBrandActive = false;
                              setState(() {});
                              ref.invalidate(filterUserProductProvider);
                              ref.invalidate(userSubCategoryProvider);
                            })
                      ] else
                        ExpansionTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  widget.username != null
                                      ? 'Categories from this seller'
                                      : "Categories",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontSize: getDefaultSize(),
                                        fontWeight: FontWeight.w600,
                                        color: PreluraColors.grey,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 19.0),
                                child: Icon(
                                    expandedCategories
                                        ? Icons.keyboard_arrow_up_rounded
                                        : Icons.keyboard_arrow_down_rounded,
                                    weight: 500,
                                    color: PreluraColors.primaryColor,
                                    size: 26),
                              )
                            ],
                          ),
                          tilePadding: EdgeInsets.only(top: 10),
                          childrenPadding: EdgeInsets.symmetric(horizontal: 5),
                          minTileHeight: 40,
                          showTrailingIcon: false,
                          onExpansionChanged: (expanded) =>
                              setState(() => expandedCategories = expanded),
                          controller: controller,
                          collapsedShape: Border(
                            bottom: BorderSide(
                                width: 1, color: context.theme.dividerColor),
                            top: BorderSide(
                                width: 1, color: context.theme.dividerColor),
                          ),
                          expansionAnimationStyle: AnimationStyle(
                            duration: Duration(milliseconds: 300),
                          ),
                          children: categories
                              .map((e) => ExpansionTile(
                                  iconColor: PreluraColors.primaryColor,
                                  collapsedIconColor:
                                      PreluraColors.primaryColor,
                                  title: RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                      text: e.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontSize: getDefaultSize(),
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
                                            fontSize: getDefaultSize(),
                                            fontWeight: FontWeight.w400,
                                            color: PreluraColors.grey,
                                          ),
                                    )
                                  ])),
                                  collapsedShape: Border(
                                    top: BorderSide(
                                        width: 1,
                                        color: context.theme.dividerColor),
                                    bottom: BorderSide.none,
                                  ),
                                  tilePadding: EdgeInsets.only(
                                      right: 15, left: 15, top: 8, bottom: 8),
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
                                      subCategoriesIntersection(e, user.id)
                                          .map(
                                            (x) => PreluraCheckBox(
                                                icon: Icon(Icons.remove_sharp,
                                                    size: 16,
                                                    color: PreluraColors.grey),
                                                sideText:
                                                    " (${x.count} ${(x.count > 1 || x.count == 0) ? "items" : "item"})",
                                                sideTextColor:
                                                    PreluraColors.grey,
                                                isChecked:
                                                    selectedItem == x.name,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium!
                                                    .copyWith(
                                                      fontSize:
                                                          getDefaultSize(),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                onChanged: (value) {
                                                  selectedItem = x.name;
                                                  isSelected = false;

                                                  Future.delayed(
                                                      Duration(
                                                          milliseconds: 1900),
                                                      () {
                                                    isBrandActive = true;
                                                    setState(() {});
                                                  });
                                                  setState(() {});
                                                  ref
                                                      .read(
                                                          filterUserProductProvider
                                                              .notifier)
                                                      .updateFilter(
                                                          FilterTypes.category,
                                                          e.name,
                                                          user.username);
                                                  ref
                                                      .read(
                                                          userSubCategoryProvider
                                                              .notifier)
                                                      .state = x.id;

                                                  controller.collapse();
                                                },
                                                title: x.name),
                                          )
                                          .toList()))
                              .toList(),
                        ),
                      // if (!expandedCategories && selectedItem.isEmpty)
                      //   Divider(
                      //     thickness: 1,
                      //   ),

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
                                        fontSize: getDefaultSize(),
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
                            onCancel: () {
                              isSelected = !isSelected;
                              selectedItem = "";
                              ref.read(userIdProvider.notifier).state = null;
                              isBrandActive = false;
                              expandedCategories = false;
                              setState(() {});
                            },
                            onTap: () {
                              ref.read(userIdProvider.notifier).state = user.id;
                              Future.delayed(Duration(seconds: 1), () {
                                isBrandActive = true;
                                setState(() {});
                              });
                            },
                            userId: user.id,
                            username: user.username,
                            isSelected: isBrandActive),
                      ),

                      FilterAndSort(userId: user.id, username: user.username),

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
                              ]),
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
                    ] else ...[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RenderSvg(
                              svgPath: PreluraIcons.empty_box_svg,
                              svgHeight: 60,
                              svgWidth: 60,
                            ),
                            Text(
                              "No Products",
                              style: context.theme.textTheme.bodyMedium
                                  ?.copyWith(
                                      fontSize: getDefaultSize(size: 16),
                                      fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )
                    ]
                  ]),
                ],
              ),
            ),
          );
        });
  }
}
