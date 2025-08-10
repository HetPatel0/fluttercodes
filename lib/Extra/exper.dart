import 'package:flutter/material.dart';
import 'package:fluttercodes/Extra/CirclesHomeWidget.dart';
import 'package:fluttercodes/Extra/meteors.dart';

class Exper extends StatefulWidget {
  const Exper({super.key});

  @override
  State<Exper> createState() => _ExperState();
}

class _ExperState extends State<Exper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Apyyyy"),),
      body:MeteorShower(
        numberOfMeteors: 10,
        duration: Duration(seconds: 5),
        child: Expanded(child: Container( color: Colors.black,)),
      ) ,
    );


  }
}
