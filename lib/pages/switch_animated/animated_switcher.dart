// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnimatedSwitchPage extends StatefulWidget {
  const AnimatedSwitchPage({Key? key}) : super(key: key);

  @override
  _AnimatedSwitchPageState createState() => _AnimatedSwitchPageState();
}

class _AnimatedSwitchPageState extends State<AnimatedSwitchPage> {
  bool isOn = false;

  Widget myWedget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.blue, width: 2)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated switcher"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSwitcher(
                duration: Duration(seconds: 1),
                child: myWedget,
                // transitionBuilder: (child, animation) => ScaleTransition(
                //       scale: animation,
                //       child: child,
                //     )),
                transitionBuilder: (child, animation) => RotationTransition(
                      turns: animation,
                      child: child,
                    )),
            Switch(
                activeColor: Colors.blue,
                inactiveTrackColor: Colors.red,
                inactiveThumbColor: Colors.red[200],
                value: isOn,
                onChanged: (value) {
                  isOn = value;
                  setState(() {
                    if (isOn) {
                      // myWedget = SizedBox(
                      //   width: 200,
                      //   height: 100,
                      //   child: Center(
                      //     child: Text(
                      //       "SUdah on",
                      //       style: TextStyle(
                      //           color: Colors.green,
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.w700),
                      //     ),
                      //   ),
                      // );

                      myWedget = Container(
                        key: ValueKey(1),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.blue, width: 2)),
                      );
                    } else {
                      myWedget = Container(
                        key: ValueKey(2),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.blue, width: 2)),
                      );
                    }
                  });
                })
          ],
        ),
      ),
    );
  }
}
