import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$num.wav');
  }

  Expanded buildKey(int num) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
          var color;
          switch (num) {
            case 1:
              color = Colors.red;
              break;
            case 2:
              color = Colors.orange;
              break;
            case 3:
              color = Colors.yellow;
              break;
            case 4:
              color = Colors.green;
              break;
            case 5:
              color = Colors.teal;
              break;
            case 6:
              color = Colors.blue;
              break;
            case 7:
              color = Colors.purple;
              break;
          }

          return color;
        })),
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildKey(1),
              buildKey(2),
              buildKey(3),
              buildKey(4),
              buildKey(5),
              buildKey(6),
              buildKey(7),
            ],
          ),
        ),
      ),
    );
  }
}
