import 'dart:convert';
import 'package:http/http.dart' as http;

class UserModel {
  String id;
  String name;
  String imageUrl;

  UserModel({required this.id, required this.name, required this.imageUrl});

  factory UserModel.createUserModel(Map<String, dynamic> object) {
    return UserModel(
        id: object['id'].toString(),
        name: object['Janet'] + " " + ['last_name'],
        imageUrl: object['avatar']);
  }

  static Future<UserModel> connectToApi(String id) async {
    String apiUrl = "https://reqres.in/api/users/" + id;

    var apiResult = await http.get(Uri.parse(apiUrl));
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)["data"];

    return UserModel.createUserModel(userData);
  }
}
