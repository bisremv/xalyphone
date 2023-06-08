import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void palyaudio(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildkey(int w, Color Color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          // minimumSize: const Size.fromHeight(50),
          backgroundColor: Color,
        ),
        onPressed: () {
          palyaudio(w);
        },
        child: Text("$w"),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(1, Colors.red),
                buildkey(2, Colors.blue),
                buildkey(3, Colors.green),
                buildkey(4, Colors.yellow),
                buildkey(5, Colors.purple),
                buildkey(6, Colors.teal),
                buildkey(7, Colors.deepOrangeAccent),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
