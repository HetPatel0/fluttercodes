import 'package:flutter/material.dart';
import 'package:fluttercodes/apiWork/apihandling.dart';

class Displayapi extends StatefulWidget {
  const Displayapi({super.key});

  @override
  State<Displayapi> createState() => _DisplayapiState();
}

class _DisplayapiState extends State<Displayapi> {
  Apihandling api = Apihandling();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: Apihandling().getAll(), builder: (context, snapshot) {
        if(snapshot.hasData){
          return ListView.builder(itemCount: snapshot.data!.length,itemBuilder: (context, index) {
              return ListTile
                (
                title: Text(snapshot.data![index]['firstname']),
                subtitle: Column(children: [Text(snapshot.data![index]['email']),
                IconButton(onPressed: () {

                  setState(()async {
                    await api.deleteUser(id: snapshot.data![index]['id'],context: context);
                  });
                }, icon: Icon(Icons.delete))
                ]),

              );
          },);
        }
        else{
          return Text("no data found");
        }
      },)
    );
  }
}
