import 'package:flutter/material.dart';

class GradientTransparantPage extends StatelessWidget {
  const GradientTransparantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient"),
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: ShaderMask(
          shaderCallback: (ractange) {
            return LinearGradient(
                    colors: [Colors.white, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)
                .createShader(
                    Rect.fromLTRB(0, 0, ractange.width, ractange.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image(
            image: NetworkImage(
                'https://img.okezone.com/content/2021/11/29/205/2508957/blackpink-jadi-artis-pertama-yang-raih-70-juta-subscriber-di-youtube-N0XoN2OqN6.jpeg'),
          ),
        ),
      )),
    );
  }
}
