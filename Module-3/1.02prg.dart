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
      home: myscreen(),
    );
  }
}

class myscreen extends StatefulWidget {
  const myscreen({super.key});

  @override
  State<myscreen> createState() => _myscreenState();
}

class _myscreenState extends State<myscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(height: 250,width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/3.png",fit: BoxFit.fill,),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Oeschinen Lake Campground",style: TextStyle(fontWeight: FontWeight.w900),),
                      SizedBox(height:10),
                      Text("Kandersteg, Switzeriand",style: TextStyle(color: Colors.grey.shade500))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.amber,),
                      Text("41")
                    ],
                  ),
                )
              ],),SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.blue,)),
                    Text("CALL",style: TextStyle(color: Colors.blue),)
                  ],
                ),
                   Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.blue)),
                    Text("ROUTE",style: TextStyle(color: Colors.blue))
                  ],
                ),
                   Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.blue,)),
                    Text("SHARE",style: TextStyle(color: Colors.blue))
                  ],
                )
              ],),SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text("The lake is visible from multiple viewpoints, all of which are beautiful. There are many options for trails to take, making it easy to get around. Also, small boat rentals and a small alpine slide"),
              )
          ],
        ),
      ),
    );
  }
}