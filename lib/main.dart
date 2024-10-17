import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textinput/text_provider.dart';
import 'package:textinput/textinput.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=>TextProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:TextInputScreen() ,
      ),
    );
  }
}
      
        