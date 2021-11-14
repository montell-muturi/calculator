import 'package:calculator/components/operation_button.dart';
import 'package:calculator/res/constants.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class OperationsGroup extends StatelessWidget {
  const OperationsGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 4 - Constants.buttonPadding,
      child: Row(
        children: [
          OperationButton(
            iconType: Icon(Mdi.plus),
            operation: "+",
            flex: 1,
          ),
          OperationButton(
            iconType: Icon(Mdi.minus),
            operation: "-",
            flex: 1,
          ),
          OperationButton(
            iconType: Icon(Mdi.division),
            operation: "÷",
            flex: 1,
          ),
          OperationButton(
            iconType: Icon(Mdi.close),
            operation: "×",
            flex: 1,
          ),
        ],
      ),
    );
  }
}
