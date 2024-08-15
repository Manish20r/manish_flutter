import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapplicatin(),
    );
  }
}
class Myapplicatin extends StatefulWidget {
  const Myapplicatin({super.key});

  @override
  State<Myapplicatin> createState() => _MyapplicatinState();
}

class _MyapplicatinState extends State<Myapplicatin> {
  bool checkvalue =false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(child: Text('Flutter Chechbox',style: TextStyle(fontSize: 20),)),
            SizedBox(height: 50,),
            Center(
              child: Checkbox(value: checkvalue, onChanged: ((value) {
                setState(() {
                  checkvalue=value!;
                });
              })),
            )
          ],
        ),
      ),
    );
  }
}


