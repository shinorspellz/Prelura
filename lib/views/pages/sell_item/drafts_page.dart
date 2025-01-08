import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/provider/sell_item_provider.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/gap.dart';

@RoutePage()
class DraftsPage extends ConsumerStatefulWidget {
  const DraftsPage({super.key, required this.selected});
  final ValueChanged<SellItemState> selected;

  @override
  ConsumerState<DraftsPage> createState() => _DraftsPageState();
}

class _DraftsPageState extends ConsumerState<DraftsPage> {
  @override
  Widget build(BuildContext context) {
    final drafts = ref.watch(sellItemDraftProvider).valueOrNull ?? [];

    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: 'Drafts',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Wrap(
          spacing: 25,
          runSpacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.start,
          children: [
            // 10.verticalSpacing,
            ...drafts.map((e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        widget.selected(e);
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                        width: e.images.length < 2
                            ? 130
                            : e.images.length <= 3
                                ? 140
                                : 145,
                        height: 180,
                        child: Stack(
                            alignment: Alignment.center,
                            children: List.generate(
                              e.images.take(4).length,
                              (index) => Positioned(
                                right: index * 5,
                                child: Container(
                                  height: e.images.length < 2
                                      ? 170
                                      : 150 + index * 10,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.white, width: 1.2),
                                    color: Colors.grey,
                                    image: DecorationImage(
                                      image: FileImage(File(e.images
                                          .take(4)
                                          .toList()[index]
                                          .path)),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ),
                    8.verticalSpacing,
                    Text(
                      '${e.images.length} Photos',
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(e.customBrand ?? e.brand?.name ?? 'Unspecified'),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
