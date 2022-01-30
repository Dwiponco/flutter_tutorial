import 'dart:convert';
import 'package:http/http.dart' as http;

class UserList {
  String id;
  String name;

  UserList({required this.id, required this.name});

  factory UserList.createUserList(Map<String, dynamic> object) {
    return UserList(
        id: object['id'], name: object['first_name'] + " " + ["last_name"]);
  }

  static Future<List<UserList>> getUserList(String page) async {
    String apiUrl = "https://reqres.in/api/users?page=" + page;
    var apiResult = await http.get(Uri.parse(apiUrl));
    var jsonObject = json.decode(apiResult.body);

    List<dynamic> listUsers = (jsonObject as Map<String, dynamic>)["date"];

    List<UserList> users = [];
    for (int i = 0; i < listUsers.length; i++) {
      users.add(UserList.createUserList(listUsers[i]));
    }
    print("xoba panggil ini");
    return users;
  }
}
