import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Single_Audio',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome'),
        ),
        body: Center(
          child: Container(
              margin: const EdgeInsets.all(40.0),
              child: Column(children: const [
                Text(
                  'You audio is playing now.\n You can minimize this app but not force close.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ])),
        ),
      ),
    );
  }
}
