import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/controller/user/multi_buy_discount_provider.dart';
import 'package:prelura_app/core/router/app_startup.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/model/user/multi_buy_discounts/multi_buy_discounts_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/settings/widget/discountItem.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';
import '../../../controller/user/user_controller.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_button_with_loader.dart';
import '../../widgets/switch_with_text.dart';

final isSelectedProvider = StateProvider((ref) => false);
final fourItemDiscountValue = StateProvider<String?>((ref) => "0%");
final nineItemDiscountValue = StateProvider<String?>((ref) => "0%");
final aboveTenItemDiscountValue = StateProvider<String?>((ref) => "0%");

@RoutePage()
class MultiBuyDiscountScreen extends ConsumerStatefulWidget {
  const MultiBuyDiscountScreen({super.key});
  @override
  _EditSaveExampleState createState() => _EditSaveExampleState();
}

class _EditSaveExampleState extends ConsumerState<MultiBuyDiscountScreen> {
  bool isSelected = false;
  bool isEditing = false;

  @override
  void initState() {
    Future.microtask(() {
      final multiBuyDiscount =
          ref.read(userMultiBuyDiscountProvider).valueOrNull;
      if (multiBuyDiscount != null) {
        ref.read(isSelectedProvider.notifier).state =
            checkIfAnyActive(multiBuyDiscount);
        if (multiBuyDiscount.length > 0) {
          final fourItemDiscount = multiBuyDiscount.firstWhere(
            (e) => e.minItems == 2,
            orElse: () => MultiBuyDiscountModel(
                id: 0, minItems: 2, discountValue: "0", isActive: false),
          );
          ref.read(fourItemDiscountValue.state).state = fourItemDiscount != null
              ? "${double.parse(fourItemDiscount.discountValue).toInt()}%"
              : "0%";

          final nineItemDiscount = multiBuyDiscount.firstWhere(
            (e) => e.minItems == 5,
            orElse: () => MultiBuyDiscountModel(
                id: 0, minItems: 5, discountValue: "0", isActive: false),
          );
          ref.read(nineItemDiscountValue.state).state = nineItemDiscount != null
              ? "${double.parse(nineItemDiscount.discountValue).toInt()}%"
              : "0%";
          final aboveTenDiscount = multiBuyDiscount.firstWhere(
            (e) => e.minItems == 10,
            orElse: () => MultiBuyDiscountModel(
                id: 0,
                minItems: 10,
                discountValue: "0",
                isActive: false), // Provide a fallback if no item is found.
          );

          ref.read(aboveTenItemDiscountValue.state).state =
              aboveTenDiscount != null
                  ? "${double.parse(aboveTenDiscount.discountValue).toInt()}%"
                  : "0%";
        }
      }
    });
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final multibuyDiscounts =
        ref.watch(userMultiBuyDiscountProvider).valueOrNull;

    return Scaffold(
        appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.back(),
          ),
          appbarTitle: "Multi-buy discounts ",
          centerTitle: true,
        ),
        body: RefreshIndicator(
          displacement: 10,
          onRefresh: () => ref.refresh(userMultiBuyDiscountProvider.future),
          child: SingleChildScrollView(
              child: Column(children: [
            PreluraSwitchWithText(
              titleText: "Multi-buy discounts",
              textStyle: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.w600, fontSize: 12.sp),
              value: ref.read(isSelectedProvider),
              disabled: false,
              onChanged: (value) async {
                ref.read(isSelectedProvider.notifier).state = value;
                if (value == false) {
                  await ref
                      .read(userMultiBuyerDiscountNotifierProvider.notifier)
                      .deactivateMultiBuyDiscounts();
                  ref.read(userMultiBuyerDiscountNotifierProvider).when(
                      data: (result) async {
                        HelperFunction.context = context;
                        HelperFunction.showToast(
                            message: "Multi-buy idscount off");
                        ref.read(isSelectedProvider.notifier).state = value;
                        ref.refresh(userProvider.future);
                        await ref.refresh(userMultiBuyDiscountProvider.future);
                      },
                      error: (e, _) {
                        log("error occured $e", name: "error");
                      },
                      loading: () {});
                  return;
                }
                ref.read(isSelectedProvider.notifier).state = value;
                setState(() {
                  isSelected = value;
                  isEditing = value;
                });
                ref.refresh(userMultiBuyDiscountProvider.future);
              },
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: PreluraColors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                    "Allow your customers to get exclusive discount when they buy multiple items from your shop.",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: getDefaultSize(),
                        fontWeight: FontWeight.w600,
                        color: PreluraColors.grey))),
            if (ref.watch(isSelectedProvider)) ...[
              DiscountItem(
                title: "2-4 items",
                isEditing: isEditing,
                percentageValue: fourItemDiscountValue,
              ),
              DiscountItem(
                title: "5-9 items",
                isEditing: isEditing,
                percentageValue: nineItemDiscountValue,
              ),
              DiscountItem(
                title: "10+ items",
                isEditing: isEditing,
                percentageValue: aboveTenItemDiscountValue,
              ),
              32.verticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: AppButton(
                  onTap: () async {
                    HapticFeedback.lightImpact();
                    if (!isEditing) {
                      setState(() {
                        isEditing = !isEditing;
                      });
                      return;
                    }
                    if (multibuyDiscounts != null) {
                      log(multibuyDiscounts.toString(),
                          name: "multibuyDiscounts");
                      if (multibuyDiscounts.isEmpty) {
                        if (ref.watch(fourItemDiscountValue) != "0") {
                          await ref
                              .read(userMultiBuyerDiscountNotifierProvider
                                  .notifier)
                              .createMultiBuyDiscounts(
                                  minItems: 2,
                                  discountPercentage: removePercentageSymbol(ref
                                      .read(fourItemDiscountValue)
                                      .toString()));
                        }

                        if (ref.watch(nineItemDiscountValue) != "0") {
                          await ref
                              .read(userMultiBuyerDiscountNotifierProvider
                                  .notifier)
                              .createMultiBuyDiscounts(
                                  minItems: 5,
                                  discountPercentage: removePercentageSymbol(ref
                                      .read(nineItemDiscountValue)
                                      .toString()));
                        }

                        if (ref.watch(aboveTenItemDiscountValue) != "0") {
                          await ref
                              .read(userMultiBuyerDiscountNotifierProvider
                                  .notifier)
                              .createMultiBuyDiscounts(
                                  minItems: 10,
                                  discountPercentage: removePercentageSymbol(ref
                                      .read(aboveTenItemDiscountValue)
                                      .toString()));
                        }
                        await ref
                            .read(userMultiBuyerDiscountNotifierProvider)
                            .when(
                                data: (result) {
                                  HelperFunction.context = context;
                                  HelperFunction.showToast(
                                      message: "Updated multi-buy discounts");
                                  ref.refresh(userProvider.future);

                                  setState(() {
                                    isEditing = !isEditing;
                                  });
                                },
                                error: (e, _) {
                                  context.alert("error occured $e");
                                },
                                loading: () {});
                        ref.invalidate(userMultiBuyDiscountProvider);
                        return;
                      }
                      if (multibuyDiscounts.isNotEmpty) {
                        if (ref.watch(fourItemDiscountValue) == "0%" &&
                            ref.watch(nineItemDiscountValue) == "0%" &&
                            ref.watch(aboveTenItemDiscountValue) == "0%" &&
                            isEditing) {
                          ref.read(isSelectedProvider.notifier).state = false;
                          await ref
                              .read(userMultiBuyerDiscountNotifierProvider
                                  .notifier)
                              .deactivateMultiBuyDiscounts();
                          ref.read(userMultiBuyerDiscountNotifierProvider).when(
                              data: (result) {
                                HelperFunction.context = context;
                                HelperFunction.showToast(
                                    message: "Multi-buy discounts off");
                                ref.refresh(userProvider.future);

                                setState(() {
                                  isEditing = !isEditing;
                                });
                              },
                              error: (e, _) {
                                log("error occured $e", name: "error");
                              },
                              loading: () {});
                          return;
                        }
                        final fourItemDiscount = multibuyDiscounts.firstWhere(
                          (e) => e.minItems == 2,
                          orElse: () => MultiBuyDiscountModel(
                              id: 0,
                              minItems: 2,
                              discountValue: "null",
                              isActive: false),
                        );

                        final aboveTenDiscount = multibuyDiscounts.firstWhere(
                          (e) => e.minItems == 10,
                          orElse: () => MultiBuyDiscountModel(
                              id: 0,
                              minItems: 10,
                              discountValue: "null",
                              isActive:
                                  false), // Provide a fallback if no item is found.
                        );
                        final nineItemDiscount = multibuyDiscounts.firstWhere(
                          (e) => e.minItems == 5,
                          orElse: () => MultiBuyDiscountModel(
                              id: 0,
                              minItems: 5,
                              discountValue: "null",
                              isActive: false),
                        );
                        if (fourItemDiscount.discountValue != "null") {
                          await ref
                              .read(userMultiBuyerDiscountNotifierProvider
                                  .notifier)
                              .updateMultiBuyDiscounts(
                                  id: int.parse(fourItemDiscount.id),
                                  minItems: 2,
                                  discountPercentage: removePercentageSymbol(ref
                                      .read(fourItemDiscountValue)
                                      .toString()));
                        }
                        if (fourItemDiscount.discountValue == "null") {
                          await ref
                              .read(userMultiBuyerDiscountNotifierProvider
                                  .notifier)
                              .createMultiBuyDiscounts(
                                  minItems: 2,
                                  discountPercentage: removePercentageSymbol(ref
                                      .read(fourItemDiscountValue)
                                      .toString()));
                        }
                        if (nineItemDiscount.discountValue != "null") {
                          if (ref.watch(nineItemDiscountValue) != "0") {
                            await ref
                                .read(userMultiBuyerDiscountNotifierProvider
                                    .notifier)
                                .updateMultiBuyDiscounts(
                                    id: int.parse(nineItemDiscount.id),
                                    minItems: 5,
                                    discountPercentage: removePercentageSymbol(
                                        ref
                                            .read(nineItemDiscountValue)
                                            .toString()));
                          }
                        }
                        if (nineItemDiscount.discountValue == "null") {
                          await ref
                              .read(userMultiBuyerDiscountNotifierProvider
                                  .notifier)
                              .createMultiBuyDiscounts(
                                  minItems: 5,
                                  discountPercentage: removePercentageSymbol(ref
                                      .read(nineItemDiscountValue)
                                      .toString()));
                        }
                        if (aboveTenDiscount.discountValue != "null") {
                          if (ref.watch(aboveTenItemDiscountValue) != "0") {
                            await ref
                                .read(userMultiBuyerDiscountNotifierProvider
                                    .notifier)
                                .updateMultiBuyDiscounts(
                                    id: int.parse(aboveTenDiscount.id),
                                    minItems: 10,
                                    discountPercentage: removePercentageSymbol(
                                        ref
                                            .read(aboveTenItemDiscountValue)
                                            .toString()));
                          }
                        }
                        if (aboveTenDiscount.discountValue == "null") {
                          await ref
                              .read(userMultiBuyerDiscountNotifierProvider
                                  .notifier)
                              .createMultiBuyDiscounts(
                                  minItems: 10,
                                  discountPercentage: removePercentageSymbol(ref
                                      .read(aboveTenItemDiscountValue)
                                      .toString()));
                        }
                        await ref
                            .read(userMultiBuyerDiscountNotifierProvider)
                            .when(
                                data: (result) {
                                  HelperFunction.context = context;
                                  HelperFunction.showToast(
                                      message: "Updated multi-buy discounts");
                                  ref.refresh(userProvider.future);

                                  setState(() {
                                    isEditing = !isEditing;
                                  });
                                },
                                error: (e, _) {
                                  context.alert("error occured $e");
                                  log("error occured $e");
                                },
                                loading: () {});
                        ref.refresh(userMultiBuyDiscountProvider.future);

                        return;
                      }
                    }
                    // if (multibuyDiscounts == null) {
                    //   if (ref.watch(fourItemDiscountValue) != "0") {
                    //     await ref
                    //         .read(userMultiBuyerDiscountNotifierProvider.notifier)
                    //         .createMultiBuyDiscounts(
                    //             minItems: 2,
                    //             discountPercentage:
                    //                 ref.read(fourItemDiscountValue).toString());
                    //   }
                    //   if (ref.watch(nineItemDiscountValue) != "0") {
                    //     await ref
                    //         .read(userMultiBuyerDiscountNotifierProvider.notifier)
                    //         .createMultiBuyDiscounts(
                    //             minItems: 5,
                    //             discountPercentage:
                    //                 ref.read(nineItemDiscountValue).toString());
                    //   }
                    //   if (ref.watch(aboveTenItemDiscountValue) != "0") {
                    //     await ref
                    //         .read(userMultiBuyerDiscountNotifierProvider.notifier)
                    //         .createMultiBuyDiscounts(
                    //             minItems: 10,
                    //             discountPercentage: ref
                    //                 .read(aboveTenItemDiscountValue)
                    //                 .toString());
                    //   }
                    //   ref.refresh(userMultiBuyDiscountProvider.future);
                    //   return;
                    // }

                    log(isEditing.toString());
                    if (ref.watch(fourItemDiscountValue) == "0%" &&
                        ref.watch(nineItemDiscountValue) == "0%" &&
                        ref.watch(aboveTenItemDiscountValue) == "0%" &&
                        isEditing) {
                      ref.read(isSelectedProvider.notifier).state = false;
                      await ref
                          .read(userMultiBuyerDiscountNotifierProvider.notifier)
                          .deactivateMultiBuyDiscounts();
                      ref.read(userMultiBuyerDiscountNotifierProvider).when(
                          data: (result) {
                            log("successfull", name: "result");
                          },
                          error: (e, _) {
                            log("error occured $e", name: "error");
                          },
                          loading: () {});
                    }
                    setState(() {
                      isEditing = !isEditing;
                    });
                  },
                  text: isEditing ? "Save" : "Edit",
                  textColor: PreluraColors.white,
                  loading: ref
                      .watch(userMultiBuyerDiscountNotifierProvider)
                      .isLoading,
                  bgColor: PreluraColors.primaryColor,
                  height: 45,
                  width: double.infinity,
                ),
              ),
            ]
          ])),
        ));
  }
}

String removePercentageSymbol(String input) {
  if (input.endsWith('%')) {
    return input.substring(0, input.length - 1);
  }
  return input;
}

bool checkIfAnyActive(List<MultiBuyDiscountModel> discounts) {
  for (var discount in discounts) {
    log(discount.isActive.toString(), name: "is active");
    if (discount.isActive) {
      return true;
    }
  }
  return false;
}
