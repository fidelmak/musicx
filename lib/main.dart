import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MusicX());

class MusicX extends StatefulWidget {
  const MusicX({super.key});

  @override
  State<MusicX> createState() => _MusicXState();
}

// String song = song;
// String artist = artist;

class _MusicXState extends State<MusicX> {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('/muz/mux$soundNumber.mp3'));
  }

  Card buildKey({
    required Color color,
    required int soundNumber,
    required String song,
    required String artist,
  }) {
    return Card(
      color: color,
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Image.asset('img/muxCard.jpg'),
            title: Text(song, style: TextStyle(color: Colors.white)),
            subtitle: Text(artist, style: TextStyle(color: Colors.white)),
            trailing: TextButton(
              onPressed: () {
                // Add your onPressed code here
              },
              child: Icon(
                Icons.play_circle_filled,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    width: 300,
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Image.asset(
                              'img/ayra.png',
                              fit: BoxFit.cover,
                              height: 200.0,
                              width: 200.0,
                            ),
                            title: const Text('Sound Mojo'),
                            subtitle: const Text('play the boost out loud.'),
                          ),
                        ],
                      ),
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                    ),
                  ),
                  buildKey(
                    color: Colors.green,
                    soundNumber: 1,
                    song: "Song title: buga",
                    artist: "Artist name : Kiss Daniel",
                  ),
                  buildKey(
                      color: Colors.black,
                      soundNumber: 2,
                      song: "Song title: yoga",
                      artist: " Artist name : Asake"),
                ],
              ),
            )));
  }
}
