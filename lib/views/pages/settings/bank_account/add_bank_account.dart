import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prelura_app/core/utils/input_formatters/sort_code_text_input_formatter.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button_with_loader.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';

@RoutePage()
class AddBankAccount extends StatefulWidget {
  const AddBankAccount({super.key});

  @override
  State<AddBankAccount> createState() => _AddBankAccountState();
}

class _AddBankAccountState extends State<AddBankAccount> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dismissKeyboard,
      child: Scaffold(
        appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => context.router.popForced(),
          ),
          appbarTitle: "Add a bank account",
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(10),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sort code",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                        ),
                  ),
                  10.toHeight,
                  PreluraAuthTextField(
                    controller: sortCodeEC,
                    focusNode: sortCodeFN,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    textCapitalization: TextCapitalization.none,
                    hintText: "00-00-00",
                    onSaved: (value) => sortCodeEC.text = value ?? "",
                    onChanged: (val) {},
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Full name is required";
                      }
                      return null;
                    },
                    formatter: [
                      FilteringTextInputFormatter.digitsOnly,
                      SortCodeTextInputFormatter(),
                    ],
                  ),
                  40.toHeight,
                  Text(
                    "Account number",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                        ),
                  ),
                  10.toHeight,
                  PreluraAuthTextField(
                    controller: acctNumberEC,
                    focusNode: acctNumberFN,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    formatter: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(8),
                    ],
                    textCapitalization: TextCapitalization.none,
                    hintText: "00000000",
                  ),
                  20.toHeight,
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: toggleCheck,
                        checkColor: Colors.white,
                        side: BorderSide(color: Colors.grey.shade600),
                        visualDensity: VisualDensity.compact,
                        tristate: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "I acknowledge that I am an authorised user of this bank account",
                          textAlign: TextAlign.start,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.color,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  40.toHeight,
                  PreluraButtonWithLoader(
                    buttonTitle: "Save",
                    onPressed: save,
                    showLoadingIndicator: isLoading,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //!================ Keys ================\\
  final formKey = GlobalKey<FormState>();

//!================ Controllers ================\\
  var scrollController = ScrollController();
  var sortCodeEC = TextEditingController();
  var acctNumberEC = TextEditingController();

//!================ Focus Nodes ================\\
  var sortCodeFN = FocusNode();
  var acctNumberFN = FocusNode();

//!================ Variables ================\\

//!================ Booleans ================\\
  var isChecked = false;
  var isLoading = false;

//!================ Functions =================//

  //================ Form =================//
  onFieldSubmitted(value) {
    save();
  }

  toggleCheck(bool? value) {
    setState(() {
      isChecked = !isChecked;
    });
  }

  Future<void> save() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      setState(() {
        isLoading = true;
      });

      await Future.delayed(const Duration(seconds: 2));

      setState(() {
        isLoading = false;
      });
    }
  }
}
