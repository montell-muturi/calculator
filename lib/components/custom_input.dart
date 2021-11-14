import 'package:calculator/model/calculator_data.dart';
import 'package:calculator/res/colors.dart';
import 'package:calculator/res/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({Key? key}) : super(key: key);

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    bool calcState = Provider.of<CalculatorData>(context).isExtended;

    var _smallInputArea = Container(
      color: CustomColors.lightBackgroundColor,
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        '200-5(10)',
        style: CustomFonts.dataFontStyle,
      ),
    );

    // Widget _currentInputArea = _smallInputArea;

    var _expandedInputArea = Expanded(
      child: Container(
          color: CustomColors.lightBackgroundColor,
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '200-5(10)',
                  style: CustomFonts.dataFontStyle,
                ),
                Text(
                  '98/20*5',
                  style: CustomFonts.dataFontStyle,
                ),
                Text(
                  '9+10',
                  style: CustomFonts.dataFontStyle,
                ),
              ])),
    );

    // @override
    // void initState() {
    //   _currentInputArea = _smallInputArea;
    //   super.initState();
    // }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: calcState ? _smallInputArea : _expandedInputArea,
            ),
            TextField(
              showCursor: true,
              readOnly: true,
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.number,
              style: TextStyle(
                  color: CustomColors.fontColor, fontSize: calcState ? 20 : 28),
              controller: TextEditingController(
                  text: Provider.of<CalculatorData>(context)
                      .operationStack
                      .reversed
                      .toString()),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: CustomColors.lightBackgroundColor,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 10, vertical: calcState ? 8 : 20)),
            ),
          ],
        ),
      ),
    );
  }
}
