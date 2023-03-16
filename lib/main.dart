// ignore_for_file: import_of_legacy_library_into_null_safe, unused_import

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber}) =>
      Expanded(
          child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(""),
      ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.amber, soundNumber: 1),
            const SizedBox(
              height: 20,
            ),
            buildKey(color: Colors.black, soundNumber: 2),
            const SizedBox(
              height: 20,
            ),
            buildKey(color: Colors.green, soundNumber: 3),
            const SizedBox(
              height: 20,
            ),
            buildKey(color: Colors.red, soundNumber: 4),
            const SizedBox(
              height: 20,
            ),
            buildKey(color: Colors.blue, soundNumber: 5),
            const SizedBox(
              height: 20,
            ),
            buildKey(color: Colors.pink, soundNumber: 6),
            const SizedBox(
              height: 20,
            ),
            buildKey(color: Colors.orange, soundNumber: 7),
          ],
        )),
      ),
    );
  }
}
