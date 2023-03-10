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
  final player = AudioPlayer();
  void playSound(int soundNumber) {
    player.play(AssetSource('muz/mux$soundNumber.mp3'));
  }

  void pauseSound() {
    player.pause();
  }

  void stopSound() {
    player.stop();
  }

  Card buildKey({
    required Color color,
    required int soundNumber,
    required String song,
    required String artist,
    required image,
  }) {
    return Card(
      color: color,
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: image,
            title: Text(song, style: TextStyle(color: Colors.white)),
            subtitle: Text(artist, style: TextStyle(color: Colors.white)),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  // Add your onPressed code here
                  playSound(soundNumber);
                },
                child: Icon(
                  Icons.play_circle_filled,
                  color: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Add your onPressed code here
                  pauseSound();
                },
                child: Icon(
                  Icons.pause,
                  color: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Add your onPressed code here
                  stopSound();
                },
                child: Icon(
                  Icons.stop,
                  color: Colors.white,
                ),
              ),
            ],
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
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        height: 200,
                        child: Image.asset(
                          'assets/img/muxCard.jpg',
                          fit: BoxFit.cover,
                          width: 400,
                          height: 400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListView(children: <Widget>[
                    buildKey(
                      color: Colors.green,
                      soundNumber: 1,
                      song: "Song title: let there be light",
                      artist: "Artist name :seyi ft zlatan",
                      image: Image.asset('assets/img/zlatan.jpeg'),
                    ),
                    buildKey(
                        color: Colors.black,
                        soundNumber: 2,
                        song: "Song title:do you mind",
                        artist: " Artist name : Chris Brown",
                        image: Image.asset('assets/img/do-you-mind.webp')),
                    buildKey(
                        color: Colors.black,
                        soundNumber: 3,
                        song: "Song title: Ojemba",
                        artist: " Artist name : Phyno ft Olamide",
                        image: Image.asset('assets/img/ojemba-artwork.webp')),
                    buildKey(
                        color: Colors.black,
                        soundNumber: 4,
                        song: "Song title: yoga",
                        artist: " Artist name : Asake",
                        image: Image.asset('assets/img/yoga-artwork.webp')),
                    buildKey(
                        color: Colors.black,
                        soundNumber: 5,
                        song: "Song title: kunfayakun",
                        artist: " Artist name : seyi-vibez",
                        image: Image.asset('assets/img/sey-vibez.jpg')),
                    buildKey(
                        color: Colors.black,
                        soundNumber: 6,
                        song: "Song title: salibity",
                        artist: " Artist name : Ayra star",
                        image: Image.asset('assets/img/ayra.png')),
                  ])),
                ],
              ),
            )));
  }
}
