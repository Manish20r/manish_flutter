import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapplication(),
    );
  }
}

class Myapplication extends StatefulWidget {
  const Myapplication({super.key});

  @override
  State<Myapplication> createState() => _MyapplicationState();
}

class _MyapplicationState extends State<Myapplication> {
  Color bgcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        appBar: AppBar(
          title: Text(" Radio Button"),
        ),
        body: Column(
          children: [
    
                RadioListTile(
                title: Text("blue"),
                value: Colors.blue,
                groupValue: bgcolor,
                onChanged: (Color? value) {
                  setState(() {
                    bgcolor = value!;
                  });
                }),
    
                RadioListTile(
                
                value: Colors.red,
                title: Text("Rad"),
                groupValue: bgcolor,
                onChanged: (Color? value) {
                  setState(() {
                    bgcolor = value!;
                  });
                }),
    
    
                   RadioListTile(
                title: Text("green"),
                value: Colors.green,
                groupValue: bgcolor,
                onChanged: (Color? value) {
                  setState(() {
                    bgcolor = value!;
                  });
                }),
          ],
        ),
      ),
    );
  }
}



