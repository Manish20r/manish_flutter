import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_10/signin.dart';

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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                 Text("My login",style: TextStyle(fontSize: 35),),
                  SizedBox(height: 40,),
                 TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email"
                  ),
                 ),SizedBox(height: 20,),
                 TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password"
                  ),
                 ),
                 SizedBox(height: 20,),
                 ElevatedButton(onPressed: (){}, child: Text("Login")),
                 SizedBox(height: 30,),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) {
                           return signin();
                          })));
                        });
                      },
                      child: Text("sign In",style: TextStyle(decoration: TextDecoration.underline,))),
                       Text("Forgot Password",style: TextStyle(decoration: TextDecoration.underline,)),
                  ],
                 )
              ],
            ),
          ),
        ),
      ),
    );
  }
}