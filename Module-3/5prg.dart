import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bgcolorbutton extends StatefulWidget {
  const bgcolorbutton({super.key});

  @override
  State<bgcolorbutton> createState() => _bgcolorbuttonState();
}

class _bgcolorbuttonState extends State<bgcolorbutton> {
  Color bgcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  bgcolor=Colors.blue.shade300;
                });
              }, child: Text("button1")),
              ElevatedButton(onPressed: (){
                setState(() {
                  bgcolor=Colors.deepOrange;
                });
              }, child: Text("button2")),
              ElevatedButton(onPressed: 
              (){
                setState(() {
                  bgcolor=Colors.deepPurple;
                });
              }, child: Text("button3")),
            ],
          ),
        ),
      ),
    );
  }
}