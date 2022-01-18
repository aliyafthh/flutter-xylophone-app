import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp()); //=> is used when its a single line of code

class XylophoneApp extends StatelessWidget {

  void playSound(int x){
    final player = AudioCache();
    player.play('note$x.wav');
  }

   Expanded buildKey(Color y, int x){
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(y)),
        onPressed: () {
          playSound(x);
        },
        child: Text(''),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      buildKey(Colors.red,1),
                      buildKey(Colors.orange,2),
                      buildKey(Colors.yellow,3),
                      buildKey(Colors.green,4),
                      buildKey(Colors.teal,5),
                      buildKey(Colors.blue,6),
                      buildKey(Colors.purple,7),
                    ],
              ),
          ),
        ),
      ),
    );
  }
}

