import 'package:flutter/material.dart';

class Colours extends StatelessWidget {
  const Colours({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.red,
                )),
                Expanded(
                    child: Container(
                  color: Colors.pinkAccent,
                )),
                Expanded(
                    child: Container(
                  color: Colors.limeAccent,
                )),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.brown,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                    )),
                Expanded(
                    child: Container(
                  color: Colors.lightGreen,
                )),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.black12,
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.lightBlueAccent,
                    )),
                Expanded(
                    child: Container(
                  color: Colors.orange,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
