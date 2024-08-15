import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Create Account",style: TextStyle(fontSize: 35),),
                    SizedBox(height: 40,),
                   TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "Name"
                    ),
                   ),
                      TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Email"
                    ),
                   ),
                      TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password"
                    ),
                   ),
                   SizedBox(height: 35,),
    
                   ElevatedButton(onPressed: (){}, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}