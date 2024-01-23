import 'package:flutter/material.dart';

abstract class BaseModel<T> extends ChangeNotifier {
  T someData;

  BaseModel(this.someData);

  // Your additional methods and properties go here
}

class HomePageModel extends BaseModel<String> {
  final unfocusNode = FocusNode();

  HomePageModel(String initialData) : super(initialData);

  void initState(BuildContext context) {
    // Initialization logic, if needed
  }

  void dispose() {
    unfocusNode.dispose();
  }

  // Your additional methods and properties go here

  // Example method
  void someAction() {
    // Perform an action
    notifyListeners(); // Notify listeners when the state changes
  }
}
