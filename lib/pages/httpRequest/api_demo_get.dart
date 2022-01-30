import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/user_model.dart';

class ApiDemoGetPage extends StatefulWidget {
  const ApiDemoGetPage({ Key? key }) : super(key: key);

  @override
  _ApiDemoGetPageState createState() => _ApiDemoGetPageState();
}

class _ApiDemoGetPageState extends State<ApiDemoGetPage> {
  UserModel? userModel = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo API Get"),
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                UserModel.connectToApi('3').then((value) {
                  userModel = value;
                  setState(() {});
                });
              },
              child: Card(
                color: Colors.amber,
                child: Container(
                    // padding: EdgeInsets.all(10),
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      width: 150,
                      image: NetworkImage((userModel != null)
                          ? userModel!.imageUrl
                          : "https://totabuan.news/wp-content/uploads/2020/05/blackpink_ratio-16x9-1.jpg"),
                    ),
                    Text((userModel != null) ? userModel!.name : " kosong kan"),
                    Text((userModel != null) ? userModel!.id : "ini juga"),
                  ],
                )),
              ),
            ),
            RaisedButton(onPressed: () {
              UserModel.connectToApi('5').then((value) {
                userModel = value;
                setState(() {});
                print("what is result : ${userModel!.id}");
              });
            })
          ],
        ),
      ),
    );
  }
}