import 'package:flutter/material.dart';

class EmailId extends ChangeNotifier{
  var _emailId;

  get emailId => _emailId;

  set emailId(value) {
    _emailId = value;
    notifyListeners();
  }
}