import 'package:calculator/components/custom_input.dart';
import 'package:calculator/components/numeral_grid.dart';
import 'package:calculator/components/operations_group.dart';
import 'package:calculator/components/side_operations.dart';
import 'package:calculator/components/switcher.dart';
import 'package:calculator/model/calculator_data.dart';
import 'package:calculator/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatefulWidget {
  @override
  _LayoutViewState createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  @override
  Widget build(BuildContext context) {
    bool calcState = Provider.of<CalculatorData>(context).isExtended;
    return Scaffold(
      backgroundColor: CustomColors.darkBackgroundColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          color: CustomColors.darkBackgroundColor,
          child: Column(
            children: [
              Switcher(),
              Expanded(flex: 1, child: CustomInput()),
              Expanded(
                  flex: calcState ? 5 : 2,
                  child: Column(
                    children: [
                      OperationsGroup(),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: NumeralGrid(),
                            ),
                            Expanded(child: SideOperations())
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
