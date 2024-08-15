//  



 import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
      double _fontsize =40 ;
    void handle_A(){
      setState(() {
         _fontsize +=4;
      });
    }
    void handle_B(){
      setState(() {
        _fontsize -=4;
      });
    }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Hello Flutter",style: TextStyle(fontSize:_fontsize ),)),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                ElevatedButton(onPressed: handle_A , child: Text("+")),
                ElevatedButton(onPressed: handle_B , child: Text("-"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}


