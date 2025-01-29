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

final fourItemDiscountValueProvider = StateProvider<String>((ref) => "0%");
final nineItemDiscountValueProvider = StateProvider<String>((ref) => "0%");
final aboveTenItemDiscountValueProvider = StateProvider<String>((ref) => "0%");

@RoutePage()
class MultiBuyDiscountScreen extends ConsumerStatefulWidget {
  const MultiBuyDiscountScreen({super.key});

  @override
  _MultiBuyDiscountScreenState createState() => _MultiBuyDiscountScreenState();
}

class _MultiBuyDiscountScreenState
    extends ConsumerState<MultiBuyDiscountScreen> {
  bool isEditing = false;
  String fourItemDiscountValue = "5%";
  String nineItemDiscountValue = "5%";
  String aboveTenItemDiscountValue = "5%";
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    _initializeDiscountValues();
  }

  void _initializeDiscountValues() async {
    log("Fetching discount values...");

    final multiBuyDiscounts =
        await ref.read(userMultiBuyDiscountProvider.future);
    if (multiBuyDiscounts == null) return;

    log("Fetched discounts: $multiBuyDiscounts");

    ref.read(fourItemDiscountValueProvider.notifier).state =
        _getDiscountValue(multiBuyDiscounts, 2);
    ref.read(nineItemDiscountValueProvider.notifier).state =
        _getDiscountValue(multiBuyDiscounts, 5);
    ref.read(aboveTenItemDiscountValueProvider.notifier).state =
        _getDiscountValue(multiBuyDiscounts, 10);
  }

  String _getDiscountValue(
      List<MultiBuyDiscountModel> discounts, int minItems) {
    final discount = discounts.firstWhere(
      (e) => e.minItems == minItems,
      orElse: () => MultiBuyDiscountModel(
          id: 0, minItems: minItems, discountValue: "0", isActive: false),
    );

    log("Discount for $minItems items: ${discount.discountValue}%");

    return "${double.parse(discount.discountValue).toInt()}%";
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
    final fourItemDiscountValue = int.parse(
        removePercentageSymbol(ref.read(fourItemDiscountValueProvider)));
    final nineItemDiscountValue = int.parse(
        removePercentageSymbol(ref.read(nineItemDiscountValueProvider)));
    final aboveTenItemDiscountValue = int.parse(
        removePercentageSymbol(ref.read(aboveTenItemDiscountValueProvider)));
    log(fourItemDiscountValue.toString());
    log(ref.watch(nineItemDiscountValueProvider).toString());
    log(ref.watch(aboveTenItemDiscountValueProvider).toString());

    if (fourItemDiscountValue < 5 ||
        nineItemDiscountValue < 5 ||
        aboveTenItemDiscountValue < 5) {
      setState(() {
        errorMessage = "Minimum of 5% discount required";
      });
      return;
    }

    if (multiBuyDiscounts == null || multiBuyDiscounts.isEmpty) {
      await _createDiscounts();
      ref.read(userMultiBuyerDiscountNotifierProvider).when(
          data: (result) {
            HelperFunction.context = context;
            HelperFunction.showToast(message: "Saved");
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
            ref.refresh(userMultiBuyDiscountProvider.future);

            setState(() {
              isEditing = !isEditing;
            });
          },
          error: (e, _) {
            context.alert("error occured $e");
            log("error occured $e");
          },
          loading: () {});

      return;
    }
  }

  void clearErrorMessage() {
    setState(() {
      errorMessage = null;
    });
  }

  Future<void> deActivateMultiBuy() async {
    await ref
        .read(userMultiBuyerDiscountNotifierProvider.notifier)
        .deactivateMultiBuyDiscounts();
    ref.read(userMultiBuyerDiscountNotifierProvider).when(
        data: (result) {
          HelperFunction.context = context;
          HelperFunction.showToast(message: "Multi-buy discount off");
          ref.refresh(userProvider.future);
          ref.read(isSelectedProvider.notifier).state = false;
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
  }

  Future<void> _createDiscounts() async {
    await _processDiscount(fourItemDiscountValueProvider, 2);
    await _processDiscount(nineItemDiscountValueProvider, 5);
    await _processDiscount(aboveTenItemDiscountValueProvider, 10);
  }

  Future<void> _updateDiscounts(
      List<MultiBuyDiscountModel> multiBuyDiscounts) async {
    Future<void> processExistingOrCreate(
        StateProvider<String> provider, int minItems) async {
      final existing = multiBuyDiscounts.firstWhere(
        (e) => e.minItems == minItems,
        orElse: () => MultiBuyDiscountModel(
            id: 0, minItems: minItems, discountValue: "null", isActive: false),
      );
      final discountValue = ref.read(provider);
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

    await processExistingOrCreate(fourItemDiscountValueProvider, 2);
    await processExistingOrCreate(nineItemDiscountValueProvider, 5);
    await processExistingOrCreate(aboveTenItemDiscountValueProvider, 10);
  }

  Future<void> _processDiscount(
      StateProvider<String> provider, int minItems) async {
    final value = ref.read(provider);
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
                            percentageValue: fourItemDiscountValueProvider,
                            onChange: clearErrorMessage,
                          ),
                          DiscountItem(
                            title: "5-9 items",
                            isEditing: isEditing,
                            percentageValue: nineItemDiscountValueProvider,
                            onChange: clearErrorMessage,
                          ),
                          DiscountItem(
                            title: "10+ items",
                            isEditing: isEditing,
                            percentageValue: aboveTenItemDiscountValueProvider,
                            onChange: clearErrorMessage,
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
                          16.verticalSpacing,
                          Text(
                            errorMessage ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: getDefaultSize(size: 12),
                                  color: PreluraColors.error,
                                ),
                          )
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
