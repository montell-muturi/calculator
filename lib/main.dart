import 'package:calculator/layout.dart';
import 'package:calculator/model/calculator_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kal-Q-l8r',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: MultiProvider(providers: [
        ChangeNotifierProvider.value(value: CalculatorData())
      ], child: LayoutView())),
    );
  }
}
