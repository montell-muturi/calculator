import 'package:calculator/components/numeral_button.dart';
import 'package:flutter/material.dart';

class NumeralGrid extends StatelessWidget {
  const NumeralGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              NumeralButton(
                content: '7',
              ),
              NumeralButton(
                content: '8',
              ),
              NumeralButton(
                content: '9',
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              NumeralButton(
                content: '4',
              ),
              NumeralButton(
                content: '5',
              ),
              NumeralButton(
                content: '6',
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              NumeralButton(
                content: '1',
              ),
              NumeralButton(
                content: '2',
              ),
              NumeralButton(
                content: '3',
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              NumeralButton(
                content: '0',
              ),
              NumeralButton(
                content: '.',
                squareButon: true,
              ),
              NumeralButton(
                content: '%',
                squareButon: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}