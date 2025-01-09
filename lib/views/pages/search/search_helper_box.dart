import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prelura_app/controller/search_history_provider.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/views/widgets/gap.dart';

class SearchHelperBox extends ConsumerWidget {
  const SearchHelperBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchHistories = ref.watch(
      userSearchHistoryProvider(
        Enum$SearchTypeEnum.PRODUCT,
      ),
    );
    final searchSuggestions = ref.watch(
      searchHistoryProvider(
        Enum$SearchTypeEnum.PRODUCT,
      ),
    );
    final searchQuery = ref.watch(searchHistoryQueryProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        if (searchHistories.value?.isNotEmpty ?? false)
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Clear all",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: PreluraColors.greyColor,
                ),
              ),
            ),
          ),
        addVerticalSpacing(10),
        if (searchQuery?.isEmpty ?? false)
          searchHistories.when(
            data: (searches) {
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: searches.length,
                itemBuilder: (context, index) {
                  return SearchHintItemBox(
                    label: "Nike bag",
                  );
                },
              );
            },
            error: (a, b) {
              return SizedBox.shrink();
            },
            loading: () => Center(
              child: CircularProgressIndicator.adaptive(
                backgroundColor: PreluraColors.greyColor,
              ),
            ),
          )
        else
          searchSuggestions.when(
            data: (searches) {
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: searches.length,
                itemBuilder: (context, index) {
                  return SearchHintItemBox(
                    label: searches[index] ?? "",
                    showCloseIcon: false,
                  );
                },
              );
            },
            error: (a, b) {
              return SizedBox.shrink();
            },
            loading: () => Center(
              child: CircularProgressIndicator.adaptive(
                backgroundColor: PreluraColors.greyColor,
              ),
            ),
          ),
      ]),
    );
  }
}

class SearchHintItemBox extends StatelessWidget {
  final String label;
  final bool showCloseIcon;
  final Function? onClose;
  const SearchHintItemBox({
    super.key,
    required this.label,
    this.showCloseIcon = true,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      color: Colors.transparent,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: PreluraColors.greyColor,
              ),
            ),
            if (showCloseIcon)
              SvgPicture.asset(
                "assets/icons/CloseIcon.svg",
                height: 20,
                colorFilter: ColorFilter.mode(
                  PreluraColors.greyColor,
                  BlendMode.srcIn,
                ),
              )
          ]),
    );
  }
}
