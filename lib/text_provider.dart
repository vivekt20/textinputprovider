import 'package:flutter/material.dart';
class TextProvider extends ChangeNotifier{
  String _text="";

  String get text=> _text;

  void changeText(String val){
    _text=val;
    notifyListeners();
  }

}
