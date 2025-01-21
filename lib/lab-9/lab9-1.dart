import 'package:flutter/material.dart';
import 'package:hittaker/Lab-6/extracolour.dart';

class TabBarUse extends StatelessWidget {
  const TabBarUse({super.key});

  @override
  Widget build(BuildContext context) {
          return  DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text("TabBar Useage"),
                bottom: TabBar(
                  tabs: [
                    Tab(text: "tab1"),
                    Tab(text: "tab2"),
                    Tab(text: "tab3"),

                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Center(child: Text("tab1  detail",style: TextStyle(color: Colors.red),)),
                  Center(child: Text("tab2  detail" , style: TextStyle(color: Colors.blue),)),
                  Center(child: Text("tab3  detail",style: TextStyle(color: Colors.green),))
                ],
              ),

            ),
        );
  }
}
