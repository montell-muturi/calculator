import 'package:calculator/model/calculator_data.dart';
import 'package:calculator/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Switcher extends StatefulWidget {
  const Switcher({Key? key}) : super(key: key);

  @override
  _SwitcherState createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  void _changeState(BuildContext context, String type) {
    Provider.of<CalculatorData>(context, listen: false).changeState(type);
  }

  @override
  Widget build(BuildContext context) {
    bool calcState = Provider.of<CalculatorData>(context).isExtended;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: calcState
                        ? null
                        : MaterialStateProperty.all<Color>(
                            CustomColors.accentColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(
                                width: 2,
                                color: CustomColors.accentColor,
                                style: BorderStyle.solid)))),
                onPressed: () {
                  _changeState(context, "standard");
                  print(Provider.of<CalculatorData>(context, listen: false)
                      .isExtended);
                },
                child: Text(
                  'standard'.toUpperCase(),
                  style: TextStyle(
                      color: calcState
                          ? CustomColors.accentColor
                          : CustomColors.darkBackgroundColor,
                      fontSize: 16),
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: calcState
                        ? MaterialStateProperty.all<Color>(
                            CustomColors.accentColor)
                        : null,
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(
                                width: 2,
                                color: CustomColors.accentColor,
                                style: BorderStyle.solid)))),
                onPressed: () {
                  _changeState(context, "extended");
                  print(Provider.of<CalculatorData>(context, listen: false)
                      .isExtended);
                },
                child: Text(
                  'extended'.toUpperCase(),
                  style: TextStyle(
                      color: calcState
                          ? CustomColors.darkBackgroundColor
                          : CustomColors.accentColor,
                      fontSize: 16),
                )),
          ),
        ),
      ],
    );
  }
}
