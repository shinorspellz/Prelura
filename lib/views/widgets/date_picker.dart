import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

showPreluraDatePicker({
  required BuildContext context,
  Function(DateTime?)? onSelect,
  DateTime? initialDate,
}) async {
  bool isIOS = defaultTargetPlatform == TargetPlatform.iOS;
  DateTime? selectedDate;

  if (isIOS) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: SizedBox(
          height: 300,
          child: CupertinoDatePicker(
            initialDateTime: initialDate,
            mode: CupertinoDatePickerMode.date,
            use24hFormat: true,
            // This shows day of week alongside day of month
            showDayOfWeek: true,
            // This is called when the user changes the date.
            onDateTimeChanged: (newDate) {
              selectedDate = newDate;
              // setState(() => date = newDate);
            },
          ),
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              onSelect?.call(selectedDate);
              Navigator.pop(context);
            },
            isDefaultAction: true,
            child: Text('Apply'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context),
          isDestructiveAction: true,
          child: Text('Cancel'),
        ),
      ),
    );
    return;
  }

  final date = await showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: DateTime(1900),
    lastDate: DateTime(2030),
  );

  onSelect?.call(date);
}
