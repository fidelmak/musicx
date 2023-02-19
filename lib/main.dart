import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MusicX());

class MusicX extends StatefulWidget {
  const MusicX({super.key});

  @override
  State<MusicX> createState() => _MusicXState();
}

class _MusicXState extends State<MusicX> {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('mux$soundNumber.mp3'));
  }

  Expanded buildkey({
    required int soundNumber,
  }) {
    return Expanded(
      child: Card(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'MusicX.',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  tooltip: 'Search Icon',
                  onPressed: () {},
                ), //IconButton
                //IconButton
              ],
              leading: IconButton(
                icon: const Icon(Icons.menu),
                tooltip: 'Menu Icon',
                onPressed: () {},
              ),
              backgroundColor: Colors.black,
            ),
            backgroundColor: Colors.grey,
            body: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Card(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('img/muxCard.jpg'),
                          title: const Text('Demo Title'),
                          subtitle:
                              const Text('This is a simple card in Flutter.'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
