import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  bool playing = true;
  // AudioPlayer audioPlayer = AudioPlayer();

  // final AudioCache audioCache = AudioCache(
  //     prefix: "assets/",
  //     fixedPlayer: AudioPlayer(
  //       mode: PlayerMode.LOW_LATENCY,
  //     )..setReleaseMode(ReleaseMode.STOP))
  //   ..load('shutup.mp3');
  @override
  void initState() {
    super.initState();

    assetsAudioPlayer.open(
      Audio("assets/ambient_decay.mp3"),
      showNotification: true,
    );
    playing = true;
    //WidgetsBinding.instance?.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Single_Audio',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: playing
                    ? const Icon(Icons.pause)
                    : const Icon(Icons.play_arrow),
                tooltip: 'Play/Pause',
                onPressed: () {
                  assetsAudioPlayer.playOrPause();
                  setState(() {
                    playing = !playing;
                  });
                },
              ),
              Container(
                margin: const EdgeInsets.all(40.0),
                child: const Text(
                  'You audio is playing now.\n You can minimize this app but not force close.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
