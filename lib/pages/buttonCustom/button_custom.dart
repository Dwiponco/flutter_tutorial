import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/buttonCustom/colorfull_button.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button custom'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child:
                  ColorfullButton(Colors.pink, Colors.blue, Icons.play_lesson)),
          Center(
              child: ColorfullButton(
                  Colors.pink, Colors.blue, Icons.book_rounded)),
          Center(
              child: ColorfullButton(
                  Colors.pink, Colors.blue, Icons.book_rounded)),
          Center(
              child: ColorfullButton(
                  Colors.pink, Colors.blue, Icons.book_rounded)),
        ],
      ),
    );
  }
}
