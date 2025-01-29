// Refactored MultiBuyDiscountScreen Implementation
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/user/multi_buy_discount_provider.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/model/user/multi_buy_discounts/multi_buy_discounts_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/settings/widget/discountItem.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/user/user_controller.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/app_button.dart';
import '../../widgets/switch_with_text.dart';

// Providers for discount values
final isSelectedProvider = StateProvider(
    (ref) => ref.read(userProvider).valueOrNull?.isMultibuyEnabled ?? false);
final fourItemDiscountValue = StateProvider<String?>((ref) => "0%");
final nineItemDiscountValue = StateProvider<String?>((ref) => "0%");
final aboveTenItemDiscountValue = StateProvider<String?>((ref) => "0%");

@RoutePage()
class MultiBuyDiscountScreen extends ConsumerStatefulWidget {
  const MultiBuyDiscountScreen({super.key});

  @override
  _MultiBuyDiscountScreenState createState() => _MultiBuyDiscountScreenState();
}

class _MultiBuyDiscountScreenState
    extends ConsumerState<MultiBuyDiscountScreen> {
  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    _initializeDiscountValues();
  }

  void _initializeDiscountValues() async {
    final multiBuyDiscounts =
        ref.read(userMultiBuyDiscountProvider).valueOrNull;
    if (multiBuyDiscounts == null) return;

    void setDiscountValue(StateProvider<String?> provider, int minItems) {
      final discount = multiBuyDiscounts.firstWhere(
        (e) => e.minItems == minItems,
        orElse: () => MultiBuyDiscountModel(
            id: 0, minItems: minItems, discountValue: "0", isActive: false),
      );
      ref.read(provider.notifier).state =
          "${double.parse(discount.discountValue).toInt()}%";
    }

    setDiscountValue(fourItemDiscountValue, 2);
    setDiscountValue(nineItemDiscountValue, 5);
    setDiscountValue(aboveTenItemDiscountValue, 10);
  }

  Future<void> _toggleMultiBuyDiscount(bool isEnabled) async {
    ref.read(isSelectedProvider.notifier).state = isEnabled;

    if (!isEnabled) {
      await ref
          .read(userMultiBuyerDiscountNotifierProvider.notifier)
          .deactivateMultiBuyDiscounts();
      HelperFunction.context = context;
      HelperFunction.showToast(message: "Multi-buy discount off");
    }
    ref.refresh(userProvider);
    setState(() => isEditing = isEnabled);
    ref.refresh(userMultiBuyDiscountProvider.future);
  }

  Future<void> _saveDiscounts(
      List<MultiBuyDiscountModel>? multiBuyDiscounts) async {
    if (!isEditing) {
      setState(() {
        isEditing = !isEditing;
      });
      return;
    }

    if (multiBuyDiscounts == null || multiBuyDiscounts.isEmpty) {
      await _createDiscounts();
      ref.read(userMultiBuyerDiscountNotifierProvider).when(
          data: (result) {
            HelperFunction.context = context;
            HelperFunction.showToast(message: "Created multi-buy discounts");
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
    } else {
      await _updateDiscounts(multiBuyDiscounts);
      ref.read(userMultiBuyerDiscountNotifierProvider).when(
          data: (result) {
            HelperFunction.context = context;
            HelperFunction.showToast(message: "Updated multi-buy discounts");
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

  Future<void> _createDiscounts() async {
    await _processDiscount(fourItemDiscountValue, 2);
    await _processDiscount(nineItemDiscountValue, 5);
    await _processDiscount(aboveTenItemDiscountValue, 10);
  }

  Future<void> _updateDiscounts(
      List<MultiBuyDiscountModel> multiBuyDiscounts) async {
    Future<void> processExistingOrCreate(
        StateProvider<String?> provider, int minItems) async {
      final existing = multiBuyDiscounts.firstWhere(
        (e) => e.minItems == minItems,
        orElse: () => MultiBuyDiscountModel(
            id: 0, minItems: minItems, discountValue: "null", isActive: false),
      );
      final discountValue = ref.read(provider.notifier).state ?? "0%";
      final percentage = removePercentageSymbol(discountValue);

      if (existing.discountValue == "null" && discountValue != "0%") {
        await ref
            .read(userMultiBuyerDiscountNotifierProvider.notifier)
            .createMultiBuyDiscounts(
              minItems: minItems,
              discountPercentage: percentage,
            );
      } else {
        await ref
            .read(userMultiBuyerDiscountNotifierProvider.notifier)
            .updateMultiBuyDiscounts(
              id: int.parse(existing.id),
              minItems: minItems,
              discountPercentage: percentage,
            );
      }
    }

    await processExistingOrCreate(fourItemDiscountValue, 2);
    await processExistingOrCreate(nineItemDiscountValue, 5);
    await processExistingOrCreate(aboveTenItemDiscountValue, 10);
  }

  Future<void> _processDiscount(
      StateProvider<String?> provider, int minItems) async {
    final value = ref.read(provider.notifier).state;
    if (value != "0%") {
      await ref
          .read(userMultiBuyerDiscountNotifierProvider.notifier)
          .createMultiBuyDiscounts(
            minItems: minItems,
            discountPercentage: removePercentageSymbol(value ?? "0%"),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final multiBuyDiscounts =
        ref.watch(userMultiBuyDiscountProvider).valueOrNull;
    final isEnabled = ref.watch(isSelectedProvider);

    final fourItemDiscountValue = StateProvider<String?>((ref) {
      final multiBuyDiscounts =
          ref.watch(userMultiBuyDiscountProvider).valueOrNull;
      final discount = multiBuyDiscounts?.firstWhere(
        (e) => e.minItems == 2,
        orElse: () => MultiBuyDiscountModel(
            id: 0, minItems: 2, discountValue: "0", isActive: false),
      );
      return "${double.parse(discount?.discountValue ?? "0").toInt()}%";
    });

    final nineItemDiscountValue = StateProvider<String?>((ref) {
      final multiBuyDiscounts =
          ref.watch(userMultiBuyDiscountProvider).valueOrNull;
      final discount = multiBuyDiscounts?.firstWhere(
        (e) => e.minItems == 5,
        orElse: () => MultiBuyDiscountModel(
            id: 0, minItems: 5, discountValue: "0", isActive: false),
      );
      return "${double.parse(discount?.discountValue ?? "0").toInt()}%";
    });

    final aboveTenItemDiscountValue = StateProvider<String?>((ref) {
      final multiBuyDiscounts =
          ref.watch(userMultiBuyDiscountProvider).valueOrNull;
      final discount = multiBuyDiscounts?.firstWhere(
        (e) => e.minItems == 10,
        orElse: () => MultiBuyDiscountModel(
            id: 0, minItems: 10, discountValue: "0", isActive: false),
      );
      return "${double.parse(discount?.discountValue ?? "0").toInt()}%";
    });

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        appbarTitle: "Multi-buy discounts",
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(userMultiBuyDiscountProvider.future),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PreluraSwitchWithText(
                titleText: "Multi-buy discounts",
                textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                value: isEnabled,
                onChanged: (value) => _toggleMultiBuyDiscount(value),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: PreluraColors.grey, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Allow your customers to get exclusive discounts when they buy multiple items from your shop.",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: getDefaultSize(),
                        fontWeight: FontWeight.w600,
                        color: PreluraColors.grey,
                      ),
                ),
              ),
              if (isEnabled)
                multiBuyDiscounts == null
                    ? const LoadingWidget()
                    : Column(
                        children: [
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: AppButton(
                              onTap: () => _saveDiscounts(multiBuyDiscounts),
                              text: isEditing ? "Save" : "Edit",
                              textColor: PreluraColors.white,
                              bgColor: PreluraColors.primaryColor,
                              loading: ref
                                  .watch(userMultiBuyerDiscountNotifierProvider)
                                  .isLoading,
                              height: 45,
                              width: double.infinity,
                            ),
                          ),
                        ],
                      ),
            ],
          ),
        ),
      ),
    );
  }
}

String removePercentageSymbol(String input) {
  return input.endsWith('%') ? input.substring(0, input.length - 1) : input;
}
