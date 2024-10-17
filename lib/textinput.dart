import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textinput/text_provider.dart';
class TextInputScreen extends StatefulWidget{
  @override  
  State<TextInputScreen>createState()=>_TextInputScreenState();
}
class _TextInputScreenState extends State<TextInputScreen>{
  
    @override  
    Widget build(BuildContext context){
      final textProvider=Provider.of<TextProvider>(context);
      return Scaffold(
        appBar: AppBar(
          title: Text('Text Input Example'),
        ),
        body: Padding(padding:const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: textProvider.changeText,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                  labelText:'Enter Text',
                
              ),
            ),
            SizedBox(height: 20),
            Text('You typed:${textProvider.text}',
            style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        ),
      );
    }
}