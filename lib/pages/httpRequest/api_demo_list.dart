import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/user_model_list.dart';

class ApiDemoList extends StatefulWidget {
  const ApiDemoList({ Key? key }) : super(key: key);

  @override
  _ApiDemoListState createState() => _ApiDemoListState();
}

class _ApiDemoListState extends State<ApiDemoList> {
  String output = "no data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo List"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(output),
            RaisedButton(onPressed: (){
              UserList.getUserList("2").then((users) {
                output = "";
                for(int i = 0; i < users.length; i++) {
                  output = output + " [ " + users[i].name + " ] ";
                }
                setState((){});
              });
            }, child: Text("get List"),)
          ],
        ),
      ),
    );
  }
}