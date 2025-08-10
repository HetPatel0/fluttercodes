import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Mydatabse extends StatefulWidget {
  const Mydatabse({super.key});

  @override
  State<Mydatabse> createState() => _MydatabseState();
}

class _MydatabseState extends State<Mydatabse> {
  late Database myDB;
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  String errmsg = '';
  List<Map<String, dynamic>> data = [];

  Future<Database> initDatabase() async {
    return await openDatabase('mydb.db', onCreate: (db, version) {
      db.execute(
          'CREATE TABLE ExTable(UserId INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT,desc TEXT)');
    }, onUpgrade: (db, oldVersion, newVersion) {}, version: 1);
  }
  // Future<Database> getDatabase() async{
  //    myDB??= await initDatabase();
  //    return myDB!;
  //  }

  Future<bool> insertInDatabase(String title, String desc) async {
    var db = await initDatabase();
    int rowsEffectd =
        await db.insert("ExTable", {"title": title, "desc": desc});
    return rowsEffectd > 0;
  }
// for class
  // Future<List<Map<String,dynamic>>> getDb() async{
  //   var db = await initDatabase();
  //   List<Map<String,dynamic>> myData =await db.query("ExTable");
  //   return myData;
  // }

  //but here i need void return as storing in data
  Future<void> getDb() async {
    var db = await initDatabase();
    List<Map<String, dynamic>> myData = await db.query("ExTable");
    setState(() {
      data = myData;
    });
  }

  Future<bool> updatedb(String title, String desc, int sno) async {
    var db1 = await initDatabase();
    int rowsEffected = await db1.update(
        'ExTable', {"UserId": sno, "title": title, "desc": desc},
        where: '"UserId" = $sno');
    return rowsEffected > 0;
  }

  Future<bool> deletedb(int sno) async {
    var db2 = await initDatabase();
    int rowsEffected = await db2
        .delete("ExTable", where: '"UserId" = ? ', whereArgs: ['$sno']);
    return rowsEffected > 0;
  }

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    getDb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("base testting"),
      ),
      body: data.isNotEmpty
          ? ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text('${index+1}'),
                  title: Text(data[index]["title"]),
                  subtitle: Text(data[index]["desc"]),
                  trailing: SizedBox(
                    width: 50,
                    child: Row(
                      children: [
                        InkWell(onTap: () {
                          showModalBottomSheet(context: context, builder: (context) {
                            titleController.text = data[index]["title"];
                            descController.text= data[index]["desc"];
                            return getBottomsheet(isUpdate: true,sno: data[index]['UserId']);
                          },);
                        }, child: Icon(Icons.edit)),
                        InkWell(
                          onTap: () async{
                           bool check = await  deletedb(data[index]['UserId']);
                           if(check) {
                             getDb();
                           }
                          },
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          : Center(
              child: Text('No data yet'),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          titleController.clear();
          descController.clear();
          showModalBottomSheet(
            context: context,
            builder: (context) {
            return  getBottomsheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget getBottomsheet({bool isUpdate = false,int sno =0}) {
    return Container(
      padding: EdgeInsets.all(11),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            isUpdate ? "Update note" : "Add Video: ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 21,
          ),
          TextField(
            controller: titleController,
            decoration: InputDecoration(
                hintText: "Enter title",
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11))),
          ),
          SizedBox(
            height: 11,
          ),
          TextField(
            maxLines: 4,
            controller: descController,
            decoration: InputDecoration(
                hintText: "Enter description",
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11))),
          ),
          SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                    onPressed: () async {
                      String title = titleController.text;
                      String desc = descController.text;
                      if (title.isNotEmpty && desc.isNotEmpty) {
                        bool check = isUpdate? await updatedb(title, desc, sno) : await insertInDatabase(title, desc);
                        if (check) {
                          getDb();
                        }
                        Navigator.pop(context);
                      } else {

                      }
                      titleController.clear();
                      descController.clear();
                    },
                    child: Text(isUpdate ? "Update video" : "Add video")),
              ),
              SizedBox(
                width: 11,
              ),
              Expanded(
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel")),
              ),
            ],
          )
        ],
      ),
    );
  }
}
