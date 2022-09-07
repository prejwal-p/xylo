import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              overlayColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              )),
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text('')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.redAccent, 1),
                buildKey(Colors.orangeAccent, 2),
                buildKey(Colors.yellowAccent, 3),
                buildKey(Colors.greenAccent, 4),
                buildKey(Colors.teal, 5),
                buildKey(Colors.blueAccent, 6),
                buildKey(Colors.purpleAccent, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
