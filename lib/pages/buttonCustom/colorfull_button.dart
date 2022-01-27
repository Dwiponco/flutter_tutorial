// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'dart:math';

class ColorfullButton extends StatefulWidget {
  late Color mainColor, secondColor;
  late IconData iconData;
  @override
  _ColorfullButtonState createState() =>
      _ColorfullButtonState(mainColor, secondColor, iconData);

  ColorfullButton(this.mainColor, this.secondColor, this.iconData);
}

class _ColorfullButtonState extends State<ColorfullButton> {
  bool isPressed = false;
  late Color mainColor, seccondColor;
  late IconData iconData;
  _ColorfullButtonState(this.mainColor, this.seccondColor, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: isPressed ? pi / 4 : pi,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: isPressed ? 5 : 10,
          shadowColor: isPressed ? seccondColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: isPressed ? seccondColor : mainColor,
                    child: Transform.rotate(
                      angle: isPressed ? -pi / 4 : pi,
                      child: Icon(
                        iconData,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                circleSide(30, 30),
                circleSide(-30, 30),
                circleSide(-30, -30),
                circleSide(30, -30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Transform circleSide(double right, double left) {
    return Transform.translate(
      offset: Offset(right, left),
      child: SizedBox(
        height: 50,
        width: 50,
        child: Material(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }
}
