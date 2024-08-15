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
      home: Myimages(),
    );
  }
}

class Myimages extends StatefulWidget {
  const Myimages({super.key});

  @override
  State<Myimages> createState() => _MyimagesState();
}

class _MyimagesState extends State<Myimages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  
                  image: DecorationImage(image: AssetImage("assets/images/3.png"),fit: BoxFit.fill)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child:  Text("Flutter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}