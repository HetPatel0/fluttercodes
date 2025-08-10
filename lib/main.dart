import 'package:flutter/material.dart';
import 'package:fluttercodes/Extra/exper.dart';
import 'package:fluttercodes/Extra/todo.dart';
import 'package:fluttercodes/apiWork/displayApi.dart';
import 'package:fluttercodes/databaseLab/mydatabse.dart';
import 'package:fluttercodes/lab11/grid_view_ex.dart';
import 'package:fluttercodes/lab13/navigation_tutorial.dart';

import 'Lab-6/demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Displayapi(),
    );
  }
}


