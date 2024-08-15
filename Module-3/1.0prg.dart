import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 180,width: MediaQuery.of(context).size.width,
                    color: Colors.red,
                  )
                ],
              ),SizedBox(height: 20,),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,height: 180,
                    color: Colors.blue,
                  ),
                   Container(
                    width: 180,height: 180,
                    color: Colors.blue,
                  ),
                  
                ],
              ),SizedBox(height: 20,),
               Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,height: 180,
                    color: Colors.blue,
                  ),
                   Container(
                    width: 180,height: 180,
                    color: Colors.blue,
                  ),
                  
                ],
              ),SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,width: 100,
                    color: Colors.yellow,
                  ),
                   Container(
                    height: 100,width: 100,
                    color: Colors.yellow,
                  ),
                   Container(
                    height: 100,width: 100,
                    color: Colors.yellow,
                  ),
                ],
              ),SizedBox(height: 20,),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container( 
                    height: 100,width: 100,
                    color: Colors.yellow,
                  ),
                   Container(
                    height: 100,width: 100,
                    color: Colors.yellow,
                  ),
                   Container(
                    height: 100,width: 100,
                    color: Colors.yellow,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}