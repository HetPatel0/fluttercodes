import 'dart:convert';

import 'package:http/http.dart' as http;

class Apihandling{
  var base_url="https://67c5a6d0351c081993fadf7d.mockapi.io/api/";
Future<List<dynamic>> getAll() async{
  var res = await http.get(Uri.parse(base_url+'users'));
  List<dynamic> data =jsonDecode(res.body);
  print(data);
  return data;
}



  Future<dynamic> addUser({context, map}) async {

    var res = await http.post(Uri.parse(base_url + 'users'), body: map);

    return convertJSONToData(res);
  }
  Future<dynamic> deleteUser({   id, context}) async {

    var res = await http.delete(Uri.parse(base_url + 'users/$id'));
    List<dynamic> data = jsonDecode(res.body);
    return data;


  }



  dynamic convertJSONToData(http.Response res) {
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else if (res.statusCode == 404) {
      return 'PAGE NOT FOUND PLEAE CHECK YOUR URL';
    } else if (res.statusCode == 500) {
      return 'SERVER UDI GAYELU 6';
    } else {
      return 'NO DATA FOUND';
    }
  }




}