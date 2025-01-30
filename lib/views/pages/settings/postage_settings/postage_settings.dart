import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/settings/postage_settings/modules/postage_settings_option.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';

@RoutePage()
class PostageSettings extends StatefulWidget {
  const PostageSettings({super.key});

  @override
  State<PostageSettings> createState() => _PostageSettingsState();
}

class _PostageSettingsState extends State<PostageSettings> {
  @override
  Widget build(BuildContext context) {
    // var colorScheme = Theme.of(context).colorScheme;

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
          appbarTitle: "Postage Settings",
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            controller: scrollController,
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  postageSettingsOption(
                    context,
                    optionTitle: "Royal Mail",
                    prefixText: prefixText,
                    editIsActive: royalMailEditIsActive,
                    switchIsActive: royalMailSwitchIsActive,
                    toggleSwitch: toggleRoyalMailSwitch,
                    editPostageOptions: editRoyalMail,
                    textFormFieldEC: royalMailPriceEC,
                    textFormFieldFN: royalMailPriceFN,
                    expansionTileTitle: royalMailExpansionTileTitle,
                    expansionTileController: royalMailExpansionTileController,
                    expansionTileTitleColor: royalMailExpansionTitleColor,
                    generatedLength: royalMailDeliveryDurationList.length,
                    saveFunction: saveRoyalMailSettings,
                    buttonIsLoadingValue: isSavingRoyalMail,
                    listTileOnTap: selectRoyalMailDurationOption,
                    listTileItems: royalMailDeliveryDurationList,
                  ),
                  postageSettingsOption(
                    context,
                    optionTitle: "DPD",
                    editIsActive: dpdEditIsActive,
                    prefixText: prefixText,
                    switchIsActive: dpdSwitchIsActive,
                    toggleSwitch: toggleDPDSwitch,
                    editPostageOptions: editDPD,
                    textFormFieldEC: dpdPriceEC,
                    textFormFieldFN: dpdPriceFN,
                    expansionTileTitle: dpdExpansionTileTitle,
                    expansionTileController: dpdExpansionTileController,
                    expansionTileTitleColor: dpdExpansionTitleColor,
                    generatedLength: dpdDeliveryDurationList.length,
                    saveFunction: saveDPDSettings,
                    buttonIsLoadingValue: isSavingDPD,
                    listTileOnTap: selectDPDDurationOption,
                    listTileItems: dpdDeliveryDurationList,
                  ),
                  postageSettingsOption(
                    context,
                    optionTitle: "FedEx",
                    editIsActive: fedExEditIsActive,
                    prefixText: prefixText,
                    switchIsActive: fedExSwitchIsActive,
                    toggleSwitch: toggleFedExSwitch,
                    editPostageOptions: editFedEx,
                    textFormFieldEC: fedExPriceEC,
                    textFormFieldFN: fedExPriceFN,
                    expansionTileTitle: fedExExpansionTileTitle,
                    expansionTileController: fedExExpansionTileController,
                    expansionTileTitleColor: fedExExpansionTitleColor,
                    generatedLength: fedExDeliveryDurationList.length,
                    saveFunction: saveFedExSettings,
                    buttonIsLoadingValue: isSavingfedEx,
                    listTileOnTap: selectFedExDurationOption,
                    listTileItems: fedExDeliveryDurationList,
                  ),
                ],
              ),
            ),
            // }),
          ),
        ),
      ),
    );
  }

//!================ Keys ================\\
  final formKey = GlobalKey<FormState>();

//!================ Controllers ================\\
  var scrollController = ScrollController();
  var royalMailPriceEC = TextEditingController();
  var dpdPriceEC = TextEditingController();
  var fedExPriceEC = TextEditingController();

  var royalMailExpansionTileController = ExpansionTileController();
  var dpdExpansionTileController = ExpansionTileController();
  var fedExExpansionTileController = ExpansionTileController();

//!================ Focus Nodes ================\\
  var royalMailPriceFN = FocusNode();
  var dpdPriceFN = FocusNode();
  var fedExPriceFN = FocusNode();

//!================ Booleans ================\\
  var royalMailSwitchIsActive = false;
  var royalMailEditIsActive = false;
  var dpdSwitchIsActive = false;
  var dpdEditIsActive = false;
  var fedExSwitchIsActive = false;
  var fedExEditIsActive = false;
  var isLoading = false;
  var isSavingRoyalMail = false;
  var isSavingDPD = false;
  var isSavingfedEx = false;

//!================ Variables ================\\
  var prefixText = "";
  var royalMailExpansionTileTitle = "Delivery duration";
  var dpdExpansionTileTitle = "Delivery duration";
  var fedExExpansionTileTitle = "Delivery duration";
  var royalMailExpansionTitleColor = PreluraColors.greyColor;
  var dpdExpansionTitleColor = PreluraColors.greyColor;
  var fedExExpansionTitleColor = PreluraColors.greyColor;
  var royalMailDeliveryDurationList = [
    {
      "title": "2-3 business days",
      "price": 3.99,
      "isSelected": false,
    },
    {
      "title": "3-5 business days",
      "price": 5.99,
      "isSelected": false,
    },
    {
      "title": "5-7 business days",
      "price": 7.99,
      "isSelected": false,
    },
  ];
  var dpdDeliveryDurationList = [
    {
      "title": "2-3 business days",
      "price": 3.99,
      "isSelected": false,
    },
    {
      "title": "3-5 business days",
      "price": 5.99,
      "isSelected": false,
    },
    {
      "title": "5-7 business days",
      "price": 7.99,
      "isSelected": false,
    },
  ];
  var fedExDeliveryDurationList = [
    {
      "title": "2-3 business days",
      "price": 3.99,
      "isSelected": false,
    },
    {
      "title": "3-5 business days",
      "price": 5.99,
      "isSelected": false,
    },
    {
      "title": "5-7 business days",
      "price": 7.99,
      "isSelected": false,
    },
  ];

//!================ Functions =================//

  //================ Form =================//

  toggleRoyalMailSwitch(bool? value) {
    setState(() {
      royalMailSwitchIsActive = !royalMailSwitchIsActive;
      if (royalMailSwitchIsActive == false) {
        royalMailEditIsActive = false;
      }
    });
  }

  editRoyalMail() {
    setState(() {
      royalMailEditIsActive = true;
      dpdEditIsActive = false;
      fedExEditIsActive = false;
    });
  }

  selectRoyalMailDurationOption(index) {
    // Update the selected item
    for (int i = 0; i < royalMailDeliveryDurationList.length; i++) {
      setState(() {
        royalMailDeliveryDurationList[i]["isSelected"] = i == index;
      });
    }

    setState(() {
      royalMailExpansionTileTitle =
          royalMailDeliveryDurationList[index]["title"].toString();
      royalMailExpansionTitleColor = PreluraColors.primaryColor;
      royalMailPriceEC.text =
          royalMailDeliveryDurationList[index]["price"].toString();
    });
    // Close the ExpansionTile
    royalMailExpansionTileController.collapse();
  }

  Future<void> saveRoyalMailSettings() async {
    setState(() {
      isSavingRoyalMail = true;
    });
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      royalMailEditIsActive = false;
      isSavingRoyalMail = false;
    });
  }

  toggleDPDSwitch(bool? value) {
    setState(() {
      dpdSwitchIsActive = !dpdSwitchIsActive;
      if (dpdSwitchIsActive == false) {
        dpdEditIsActive = false;
      }
    });
  }

  editDPD() {
    setState(() {
      dpdEditIsActive = true;
      royalMailEditIsActive = false;
      fedExEditIsActive = false;
    });
  }

  selectDPDDurationOption(index) {
    // Update the selected item
    for (int i = 0; i < dpdDeliveryDurationList.length; i++) {
      setState(() {
        dpdDeliveryDurationList[i]["isSelected"] = i == index;
      });
    }

    setState(() {
      dpdExpansionTileTitle =
          dpdDeliveryDurationList[index]["title"].toString();
      dpdExpansionTitleColor = PreluraColors.primaryColor;
      dpdPriceEC.text = dpdDeliveryDurationList[index]["price"].toString();
    });

    // Close the ExpansionTile
    dpdExpansionTileController.collapse();
  }

  Future<void> saveDPDSettings() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      setState(() {
        isSavingDPD = true;
      });

      await Future.delayed(const Duration(seconds: 2));

      setState(() {
        dpdEditIsActive = false;
        isSavingDPD = false;
      });
    }
  }

  toggleFedExSwitch(bool? value) {
    setState(() {
      fedExSwitchIsActive = !fedExSwitchIsActive;
    });
  }

  editFedEx() {
    setState(() {
      fedExEditIsActive = true;
      dpdEditIsActive = false;
      royalMailEditIsActive = false;
    });
  }

  selectFedExDurationOption(index) {
    // Update the selected item
    for (int i = 0; i < fedExDeliveryDurationList.length; i++) {
      setState(() {
        fedExDeliveryDurationList[i]["isSelected"] = i == index;
      });
    }

    setState(() {
      fedExExpansionTileTitle =
          fedExDeliveryDurationList[index]["title"].toString();
      fedExExpansionTitleColor = PreluraColors.primaryColor;
      fedExPriceEC.text = fedExDeliveryDurationList[index]["price"].toString();
    });

    // Close the ExpansionTile
    fedExExpansionTileController.collapse();
  }

  Future<void> saveFedExSettings() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      setState(() {
        isSavingfedEx = true;
      });

      await Future.delayed(const Duration(seconds: 2));

      setState(() {
        fedExEditIsActive = false;
        isSavingfedEx = false;
      });
    }
  }
}
