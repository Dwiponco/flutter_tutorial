// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// class MusicPlayerPage extends StatelessWidget {
//   String durasi = "00:00:00";
//   late AudioPlayer audioPlayer;

//   _MusicPlayerPage() {
//     audioPlayer = AudioPlayer();
//     audioPlayer.onAudioPositionChanged.listen((duration) {
//       setState(() {
//         durasi = duration.toString();
//       });
//     });
//     audioPlayer.setReleaseMode(ReleaseMode.LOOP);
//   }

//   void playSound(String url) async {
//     await audioPlayer.play(url);
//   }

//   void puseSound() async {
//     await audioPlayer.pause();
//   }

//   void stopSound() async {
//     await audioPlayer.stop();
//   }

//   void resumeSound() async {
//     await audioPlayer.resume();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Playing Music')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             RaisedButton(
//               onPressed: () {
//                 playSound(
//                     'http://23.237.126.42/ost/top-gear-2-sega-genesis/yzcalloe/01_Title%20Theme.mp3');
//               },
//               child: Text('Play'),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 puseSound();
//               },
//               child: Text('Pause'),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 stopSound();
//               },
//               child: Text('Stop'),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 resumeSound();
//               },
//               child: Text('Resume'),
//             ),
//             Text(
//               durasi,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   void setState(Null Function() param0) {}
// }
