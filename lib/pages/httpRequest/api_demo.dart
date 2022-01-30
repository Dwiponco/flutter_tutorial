import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/post_result_model.dart';

class ApiDemoPage extends StatefulWidget {
  const ApiDemoPage({Key? key}) : super(key: key);

  @override
  _ApiDemoPageState createState() => _ApiDemoPageState();
}

class _ApiDemoPageState extends State<ApiDemoPage> {

  PostResult? postResult = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text((postResult != null) ? postResult!.id + " | " + postResult!.created : 'Kosong'),
            RaisedButton(
              onPressed: () {
                PostResult.connectToAPI("ponco", "FE").then((value) {
                  postResult = value;
                  setState(() {
                    
                  });
                });
              },
              child: Text("POST"),
            )
          ],
        ),
      ),
    );
  }
}
