import 'package:flutter/material.dart';

class TextFieldControllerProvider extends ChangeNotifier{
  TextEditingController _emailController = new TextEditingController();

  TextEditingController get emailController => _emailController;

  set emailController(TextEditingController value) {
    _emailController = value;
    notifyListeners();
  }
}