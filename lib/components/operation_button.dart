import 'package:calculator/model/calculator_data.dart';
import 'package:calculator/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OperationButton extends StatelessWidget {
  final Icon iconType;
  final String operation;
  final int flex;
  final Color? customColor;
  const OperationButton({
    Key? key,
    required this.iconType,
    required this.flex,
    this.customColor,
    required this.operation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: customColor == null
                ? CustomColors.lightBackgroundColor
                : customColor,
            alignment: Alignment.center,
            child: IconButton(
              icon: iconType,
              onPressed: () {
                if (operation == "delete") {
                  Provider.of<CalculatorData>(context, listen: false)
                      .popLastOperand();
                } else if (operation == "clear") {
                  Provider.of<CalculatorData>(context, listen: false)
                      .clearOperandStack();
                } else {
                  Provider.of<CalculatorData>(context, listen: false)
                      .addOperand(operation);
                }
              },
              color: customColor == CustomColors.lightGreen ||
                      customColor == CustomColors.greyColor
                  ? CustomColors.darkBackgroundColor
                  : CustomColors.fontColor,
              iconSize: 36.0,
            ),
          ),
        ),
      ),
    );
  }
}
