import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound (int sound ){
    final player = AudioPlayer();
    player.play(AssetSource('note$sound.wav'));
}

  Expanded buildKey({required Color color,  required int sound}) {
   return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(sound);
        },
        child:Container(
          color: color,

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
               buildKey(color: Colors.red, sound: 6),
               buildKey(color: Colors.orange, sound: 2),
               buildKey(color: Colors.yellow, sound: 3),
              buildKey(color: Colors.green, sound: 4),
              buildKey(color: Colors.teal, sound: 5),
              buildKey(color: Colors.blue, sound: 6),
              buildKey(color: Colors.purple, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
