import 'package:flutter/material.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_button_with_loader.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/primary_switch.dart';

postageSettingsOption(
  BuildContext context, {
  required String optionTitle,
  required String prefixText,
  required String expansionTileTitle,
  required bool editIsActive,
  required bool switchIsActive,
  required void Function(bool?) toggleSwitch,
  required void Function() editPostageOptions,
  required TextEditingController textFormFieldEC,
  required FocusNode textFormFieldFN,
  required ExpansionTileController expansionTileController,
  required Color expansionTileTitleColor,
  required int generatedLength,
  required void Function(int) listTileOnTap,
  required void Function() saveFunction,
  required bool buttonIsLoadingValue,
  required List<Map<String, Object>> listTileItems,
}) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 800),
    curve: Curves.easeIn,
    constraints: BoxConstraints(minHeight: 60),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border(
          bottom: BorderSide(
        color: Theme.of(context).dividerColor,
        width: 1,
      )),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                optionTitle,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                    ),
              ),
            ),
            if (!editIsActive)
              InkWell(
                onTap: switchIsActive ? editPostageOptions : null,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: switchIsActive
                        ? PreluraColors.primaryColor
                        : Colors.grey.shade400,
                  ),
                  child: Icon(
                    Icons.edit,
                    color: PreluraColors.white,
                  ),
                ),
              ),
            10.toWidth,
            PreluraSwitch(
              swicthValue: switchIsActive,
              onChanged: toggleSwitch,
            ),
          ],
        ),
        10.toHeight,
        if (editIsActive) ...[
          PreluraAuthTextField(
            controller: textFormFieldEC,
            focusNode: textFormFieldFN,
            enabled: false,
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.none,
            hintText: "Price",
            prefixText: textFormFieldEC.text.isEmpty
                ? prefixText
                : RegexPatterns.poundSign,
          ),
          10.toHeight,
          ExpansionTile(
            dense: true,
            controller: expansionTileController,
            tilePadding: EdgeInsets.symmetric(horizontal: 10),
            trailing: Icon(
              Icons.arrow_drop_down_rounded,
              color: Colors.grey.shade400,
            ),
            title: Text(
              expansionTileTitle,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: expansionTileTitleColor,
                  ),
            ),
            children: List.generate(
              generatedLength,
              (index) {
                var item = listTileItems[index];
                return ListTile(
                  onTap: () {
                    listTileOnTap(index);
                  },
                  title: Text(
                    "${item["title"]}",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: item["isSelected"] == true
                              ? PreluraColors.primaryColor
                              : Theme.of(context).textTheme.bodyMedium?.color,
                        ),
                  ),
                );
              },
            ),
          ),
          20.toHeight,
          PreluraButtonWithLoader(
            onPressed: saveFunction,
            // disable: !isChecked,
            showLoadingIndicator: buttonIsLoadingValue,
            buttonTitle: "Save",
          ),
        ],
      ],
    ),
  );
}
