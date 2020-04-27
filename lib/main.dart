import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XyloApp());

class XyloApp extends StatelessWidget {

  void playSound(int soundName) {
    final player = AudioCache();
    player.play('note$soundName.wav'); 
  }

  Expanded buildKey({Color color, Text text, int soundName}) {
    return Expanded(
      child: FlatButton(
      color: color,
      child: text,
      onPressed: () {
        playSound(soundName);
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
            children: <Widget>[
              buildKey(color: Colors.red, text: Text('DO'), soundName: 1),
              buildKey(color: Colors.orange,text: Text('RE'), soundName: 2),
              buildKey(color: Colors.tealAccent, text: Text('MI'), soundName: 3),
              buildKey(color: Colors.blue, text: Text('FA'), soundName: 4),
              buildKey(color: Colors.yellow, text: Text('SO'), soundName: 5),
              buildKey(color: Colors.green, text: Text('LA'), soundName: 6),
              buildKey(color: Colors.blueGrey, text: Text('TI'), soundName: 7),
            ],
          )
        ),
      ),
    );
  }
}

