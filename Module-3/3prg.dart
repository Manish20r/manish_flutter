import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class addnum extends StatefulWidget {
  const addnum({super.key});

  @override
  State<addnum> createState() => _addnumState();
}

class _addnumState extends State<addnum> {
  TextEditingController _num1controller =TextEditingController();
  TextEditingController _num2controller =TextEditingController();
   
   double result=0.0;

   add(){
    setState(() {
      double num1 = double.tryParse(_num1controller.text)??0;
       double num2 = double.tryParse(_num2controller.text)??0;
       result = num1+num2;
    });
   }
   sub(){
    setState(() {
      double num1 = double.tryParse(_num1controller.text)??0;
       double num2 = double.tryParse(_num2controller.text)??0;
       result =num1-num2;
    });
   }
     mul(){
    setState(() {
      double num1 = double.tryParse(_num1controller.text)??0;
       double num2 = double.tryParse(_num2controller.text)??0;
       result =num1*num2;
    });
   }
     divide(){
    setState(() {
      double num1 = double.tryParse(_num1controller.text)??0;
       double num2 = double.tryParse(_num2controller.text)??0;
       result =num1/num2;
    });
   }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('calculater'),
        
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _num1controller,
                decoration: InputDecoration(
                  hintText: "Enter number",
                  labelText: "Number"
                ),
              ),
              TextField(
                controller: _num2controller,
                  decoration: InputDecoration(
                  hintText: "Enter number",
                  labelText: "Number"
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  ElevatedButton(onPressed: (){
                    add();
                    _num1controller.clear();
                    _num2controller.clear();
                  }, child: Text('add')),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      sub();
                      _num1controller.clear();
                      _num2controller.clear();
                    });
                  }, child: Text("sub")),
                   ElevatedButton(onPressed: (){
                    setState(() {
                      mul();
                      _num1controller.clear();
                      _num2controller.clear();
                    });
                  }, child: Text("mul")),
                   ElevatedButton(onPressed: (){
                    setState(() {
                      divide();
                      _num1controller.clear();
                      _num2controller.clear();
                    });
                  }, child: Text("divid")),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(top:50),
                child: Text("result: $result",style: TextStyle(fontSize: 25),),
              )
    
              
              
            ],
          ),
        ),
      ),
    );
  }
}





