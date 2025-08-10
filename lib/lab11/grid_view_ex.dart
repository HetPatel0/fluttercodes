import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(Lab11_4());
}

class Lab11_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toggle View Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ToggleViewScreen(),
    );
  }
}

class ToggleViewScreen extends StatefulWidget {

  @override
  _ToggleViewScreenState createState() => _ToggleViewScreenState();
}

class _ToggleViewScreenState extends State<ToggleViewScreen> {
  bool isGridView = false;
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];
  DateTime current = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle between ListView & GridView'),
        actions: [
          Switch(
            value: isGridView,
            onChanged: (value) {
              setState(() {
                isGridView = value;
              });
            },
          ),
        ],
      ),
      body: isGridView
          ? GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            child: Center(


                child:Text(DateFormat().format(current))

            ),
          );
        },
      )
          : ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(items[index])
          );
        },
      ),
    );
  }
}