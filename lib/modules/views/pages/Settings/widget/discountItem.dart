import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/colors.dart';
import '../../../widgets/app_button_with_loader.dart';
import '../../../widgets/auth_text_field.dart'; // for 12.sp

// Assuming you have the PreluraAuthTextField and PreluraButtonWithLoader defined
class DiscountItem extends ConsumerStatefulWidget {
  const DiscountItem({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _EditSaveExampleState createState() => _EditSaveExampleState();
}

class _EditSaveExampleState extends ConsumerState<DiscountItem> {
  bool isEditing = false;
  TextEditingController _controller = TextEditingController();
  String value = "0";

  @override
  void initState() {
    super.initState();
    _controller.text = value;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // Wrap the Column with Center
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 12.sp),
                ),
                Container(
                  // color: Colors.red,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      PreluraAuthTextField(
                        hintText: "0",
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        prefixIcon: Icon(Icons.percent),
                        textInputAction: TextInputAction.done,
                        controller: _controller,
                        height: 45,
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 7),
                        onChanged: (newValue) {
                          setState(() {
                            String numericValue =
                                newValue.replaceAll(RegExp(r'[^0-9]'), '');
                            if (numericValue.isEmpty) {
                              numericValue = '0';
                            }
                            value = numericValue;
                            _controller.text = value;

                            _controller.selection = TextSelection.fromPosition(
                                TextPosition(offset: _controller.text.length));
                          });
                        },
                        minWidth: 50,
                        enabled: isEditing,
                      ),
                      PreluraButtonWithLoader(
                        onPressed: () {
                          setState(() {
                            if (isEditing) {}
                            isEditing = !isEditing;
                          });
                        },
                        buttonTitle: isEditing ? "Done" : "Edit",
                        showLoadingIndicator: false,
                        buttonColor: Colors.transparent,
                        buttonTitleTextStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(
                                color: PreluraColors.primaryColor,
                                fontWeight: FontWeight.w500),
                        butttonWidth: 50,
                        newButtonHeight: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
