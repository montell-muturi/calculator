import 'package:flutter/material.dart';

class CalculatorData extends ChangeNotifier {
  bool isExtended = false;
  List<String> operationStack = [];

  void addOperand(String operation) {
    operationStack.add(operation);
    notifyListeners();
  }

  void popLastOperand() {
    operationStack.removeLast();
    notifyListeners();
  }

  void clearOperandStack() {
    operationStack.clear();
    notifyListeners();
  }

  void validateOperationStack() {
    // TODO Create RegEx to validate operations as they enter the stack
  }

  void changeState(String state) {
    if (state == "standard") {
      isExtended = false;
    } else if (state == "extended") {
      isExtended = true;
    }
    notifyListeners();
  }
}
