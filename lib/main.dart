import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playAudio (int soundNumber){
    AudioCache player = AudioCache(prefix: 'assets/');
    player.play('assets_note$soundNumber.wav');

  }


  Expanded musicButton ({required Color color,required int noteNum})
  {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(elevation: 0,primary: color),
        onPressed: ()
        {
          playAudio(noteNum);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            musicButton(color: Colors.purple,noteNum: 1 ),
            musicButton(color: Colors.blue,noteNum: 2 ),
            musicButton(color: Colors.lightBlue,noteNum: 3 ),
            musicButton(color: Colors.green, noteNum: 4),
            musicButton(color: Colors.yellow,noteNum: 5 ),
            musicButton(color: Colors.orange,noteNum: 6 ),
            musicButton(color: Colors.red,noteNum: 7),
          ],
        ),
      ),
    );
  }
}

