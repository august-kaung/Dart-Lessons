import 'package:flutter/material.dart';

void main(){
  runApp(Testing());
}
class Testing extends StatefulWidget {
   Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  bool clickOff=true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title:const Text('This is testing'),
        ),
        body: GestureDetector(
          onDoubleTap: (){
            setState(() {
              clickOff=!clickOff;
            });
          },
          child: Container(
            margin: const EdgeInsets.only(left:100,top: 100),
            width: 200,
            height: 200,
            color: (clickOff)?Colors.red:Colors.green,
            child:(clickOff)?const Text('Off'): const Text('On'),
          ),
        ),
      ),
    );
  }
}
