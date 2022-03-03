import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
            child: const Text(
              'You audio is playing now.\n You can minimize this app but not force close.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
