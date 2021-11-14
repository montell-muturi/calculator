import 'package:calculator/components/operation_button.dart';
import 'package:calculator/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class SideOperations extends StatelessWidget {
  const SideOperations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OperationButton(
          customColor: CustomColors.greyColor,
          iconType: Icon(Mdi.backspaceOutline),
          operation: "delete",
          flex: 1,
        ),
        OperationButton(
          customColor: CustomColors.lightRed,
          iconType: Icon(Mdi.cancel),
          operation: "clear",
          flex: 1,
        ),
        OperationButton(
          customColor: CustomColors.lightGreen,
          iconType: Icon(Mdi.equal),
          operation: "calculate",
          flex: 2,
        ),
      ],
    );
  }
}
