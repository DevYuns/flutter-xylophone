import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String soundNumber) {
    final player = AudioCache();
    player.play('$soundNumber.wav');
  }

  Expanded buildKey({String fileName, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(fileName);
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
            children: [
              buildKey(color: Colors.red, fileName: 'note1'),
              buildKey(color: Colors.orange, fileName: 'note2'),
              buildKey(color: Colors.yellow, fileName: 'note3'),
              buildKey(color: Colors.green, fileName: 'note4'),
              buildKey(color: Colors.blue, fileName: 'note5'),
              buildKey(color: Colors.teal, fileName: 'note6'),
              buildKey(color: Colors.purple, fileName: 'note7'),
            ],
          ),
        ),
      ),
    );
  }
}
