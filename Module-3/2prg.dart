import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myreversenum extends StatefulWidget {
  

  @override
  State<Myreversenum> createState() => _MyreversenumState();
}

class _MyreversenumState extends State<Myreversenum> {
  String input="";
  String _reverse="";
  void _handle(String value){
    setState(() {
      input=value;
      _reverse=value.split("").reversed.join();
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: _handle,
                decoration: InputDecoration(
                  hintText: "Enter Number",
                  labelText: "Number"
                ),
              ),SizedBox(height: 30,),
              TextField(
                controller: TextEditingController(text: _reverse),
                decoration: InputDecoration(
                  labelText: "reverse"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


