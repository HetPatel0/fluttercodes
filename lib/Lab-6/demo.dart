import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: Text("HEllo"),
      ) ,
      body: Text("Hi", style:
      TextStyle(color: Colors.red ,fontSize: 90),),
    );
  }
}
