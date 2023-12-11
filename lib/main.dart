import 'dart:ffi';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(xylophone());

class xylophone extends StatelessWidget {
  const xylophone({super.key});
  void playSounds(int countSounds) {
    final players = AudioPlayer();
    players.play(AssetSource('note$countSounds.wav'));
  }

  Expanded buildkey({required Color color, countSounds}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            shape: LinearBorder.start(), backgroundColor: color),
        onPressed: () {
          playSounds(countSounds);
        },
        child: Text(""),
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
              buildkey(color: Colors.red, countSounds: 1),
              buildkey(color: Color.fromARGB(255, 255, 136, 0), countSounds: 2),
              buildkey(
                  color: Color.fromARGB(255, 255, 169, 64), countSounds: 3),
              buildkey(color: Color.fromARGB(255, 255, 208, 0), countSounds: 4),
              buildkey(color: Colors.yellow, countSounds: 5),
              buildkey(color: Color.fromARGB(255, 195, 255, 0), countSounds: 6),
              buildkey(color: Color.fromARGB(255, 102, 255, 0), countSounds: 7),
            ],
          ),
        ),
      ),
    );
  }
}
