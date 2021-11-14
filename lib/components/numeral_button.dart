import 'package:calculator/model/calculator_data.dart';
import 'package:calculator/res/colors.dart';
import 'package:calculator/res/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumeralButton extends StatelessWidget {
  final String content;
  final bool? squareButon;
  const NumeralButton({
    Key? key,
    required this.content,
    this.squareButon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
        child: TextButton(
            style: ButtonStyle(
                shape: squareButon != null && squareButon == true
                    ? MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                            side: BorderSide(
                                width: 3,
                                color: CustomColors.accentColor,
                                style: BorderStyle.solid)))
                    : MaterialStateProperty.all<CircleBorder>(CircleBorder(
                        side: BorderSide(
                            width: 3,
                            color: CustomColors.accentColor,
                            style: BorderStyle.solid)))),
            onPressed: () {
              Provider.of<CalculatorData>(context, listen: false)
                  .addOperand(content);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                content,
                style: CustomFonts.fontDMMono,
                textAlign: TextAlign.center,
              ),
            )),
      ),
    );
  }
}
