import 'package:flutter/material.dart';

class NavigationTutorial extends StatefulWidget {
  const NavigationTutorial({super.key});

  @override
  State<NavigationTutorial> createState() => _NavigationTutorialState();
}

class _NavigationTutorialState extends State<NavigationTutorial> {
  TextEditingController nameController = TextEditingController();
  final List<Widget> _pages = [
    Center(child: Text('Home Screen', style: TextStyle(fontSize: 24))),
    Center(child: Text('Form', style: TextStyle(fontSize: 24))),
  ];
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child:
          Form(child:
          Column(children: [
            Text("enter name: "),
            TextFormField(controller: nameController,)
          ],)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: _currentIndex,
      onTap: (index){
        setState(() {
          _currentIndex=index;
        });
      },
      items: [BottomNavigationBarItem(icon: Icon(Icons.favorite)),
      BottomNavigationBarItem(icon:Icon(Icons.favorite) )],) ,
    );
  }
}
