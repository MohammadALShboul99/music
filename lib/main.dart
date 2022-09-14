import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://th.bing.com/th/id/OIP.5xGuXerHzAvVDHRfbhB0_AHaEK?w=305&h=180&c=7&r=0&o=5&pid=1.7"),
                      fit: BoxFit.fill)),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      final player = AudioPlayer();
                      player.play(AssetSource("music-8.mp3"));
                      player.stop();
                    });
                  },
                  child: Icon(Icons.play_arrow),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      final player = AudioPlayer();
                      player.pause();
                    });
                  },
                  child: Icon(Icons.pause),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
