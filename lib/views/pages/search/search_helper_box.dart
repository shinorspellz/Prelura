import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/search_history_provider.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/views/pages/search_result/provider/search_provider.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';

import '../../../controller/user/user_controller.dart';
import '../../../model/search_suggestion_model.dart';
import '../../widgets/profile_picture.dart';

class SearchHelperBox extends HookConsumerWidget {
  final Function? onItemSelected;
  final Enum$SearchTypeEnum type;
  const SearchHelperBox({super.key, this.onItemSelected, required this.type});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      log("::::You called used 0");
      WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
        log("::::You called used 1");
        ref.invalidate(
          userSearchHistoryProvider(
            type,
          ),
        );
      });
      return null;
    }, []);
    final searchHistories = ref.watch(
      userSearchHistoryProvider(
        type,
      ),
    );
    log(":::::${searchHistories.value?.length}");
    final searchSuggestions = ref.watch(
      searchHistoryProvider(
        type,
      ),
    );
    final searchQuery = ref.watch(searchHistoryQueryProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        if (searchQuery?.isEmpty ?? true)
          searchHistories.when(
            data: (searches) {
              log(":::The data length is ${searches.length}");
              return Column(
                children: [
                  if (searches.length > 0)
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          ref.watch(deleteUserSearchHistoryProvider(
                            DeleteHistoryParams(
                              clearAll: true,
                            ),
                          ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
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
                    ),
                  ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 20),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: searches.take(10).toList().length,
                    itemBuilder: (context, index) {
                      return SearchHintItemBox(
                        type: type,
                        label: searches[index].query,
                        id: searches[index].id.toString(),
                        onItemSelected: onItemSelected,
                      );
                    },
                  ),
                ],
              );
            },
            error: (a, b) {
              return SizedBox.shrink();
            },
            loading: () => Center(
              child: LoadingWidget(),
              // CircularProgressIndicator.adaptive(
              //   backgroundColor: PreluraColors.greyColor,
              // ),
            ),
          )
        else
          searchSuggestions.when(
            data: (searches) {
              searches.isEmpty
                  ? searches.add(SearchSuggestionModel(name: searchQuery ?? ""))
                  : null;
              return ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: searches.length,
                itemBuilder: (context, index) {
                  return SearchHintItemBox(
                    searchSuggestion: searches[index],
                    type: type,
                    label: searches[index].name ?? "",
                    showCloseIcon: false,
                    onItemSelected: onItemSelected,
                  );
                },
              );
            },
            error: (a, b) {
              return SizedBox.shrink();
            },
            loading: () => Center(
              child: LoadingWidget(),
              // CircularProgressIndicator.adaptive(
              //   backgroundColor: PreluraColors.greyColor,
              // ),
            ),
          ),
      ]),
    );
  }
}

class SearchHintItemBox extends ConsumerWidget {
  final String label;
  final String? id;
  final SearchSuggestionModel? searchSuggestion;
  final bool showCloseIcon;
  final Function? onClose, onItemSelected;
  final Enum$SearchTypeEnum type;
  const SearchHintItemBox({
    super.key,
    required this.label,
    this.id,
    this.onItemSelected,
    this.searchSuggestion,
    this.showCloseIcon = true,
    required this.type,
    this.onClose,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loggedUser = ref.watch(userProvider).valueOrNull;
    return GestureDetector(
      onTap: () {
        ref.read(searchTextController.notifier).state.text = label;
        ref.read(showSearchProducts.notifier).state = true;
        onItemSelected?.call();

        if (type == Enum$SearchTypeEnum.USER) {
          if (loggedUser?.username == searchSuggestion?.name) {
            context.router.push(UserProfileDetailsRoute());
          } else {
            context.router.push(
                ProfileDetailsRoute(username: searchSuggestion?.name ?? ""));
          }
        }
        // ref
        //     .read(searchFilterProvider.notifier)
        //     .updateFilter(FilterTypes.category, label);
      },
      child: Container(
        height: 40,
        width: double.infinity,
        alignment: Alignment.center,
        color: Colors.transparent,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (type == Enum$SearchTypeEnum.USER)
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ProfilePictureWidget(
                    height: 30,
                    width: 30,
                    allowBorder: false,
                    profilePicture: searchSuggestion?.thumbnailUrl,
                    username: searchSuggestion?.name,
                  ),
                ),
              Expanded(
                child: Text(
                  label,
                  softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    color: PreluraColors.greyColor,
                  ),
                ),
              ),
              24.horizontalSpacing,
              if (showCloseIcon)
                GestureDetector(
                  onTap: () async {
                    ref.watch(deleteUserSearchHistoryProvider(
                      DeleteHistoryParams(
                        searchId: id,
                      ),
                    ));
                  },
                  child: SvgPicture.asset(
                    "assets/icons/CloseIcon.svg",
                    height: 20,
                    colorFilter: ColorFilter.mode(
                      PreluraColors.greyColor,
                      BlendMode.srcIn,
                    ),
                  ),
                )
            ]),
      ),
    );
  }
}
