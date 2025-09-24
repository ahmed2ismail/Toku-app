import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final List phrasesData = [
  phrasesCard(
    jpNum: "Kōdoku o o wasurenaku",
    enNum: "dont forget to subscribe",
    sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
  ),
  phrasesCard(
    jpNum: "Watashi wa puroguramingu ga daisukidesu",
    enNum: "i love programming",
    sound: 'sounds/phrases/i_love_programming.wav',
  ),
  phrasesCard(
    jpNum: "Puroguramingu wa kantan",
    enNum: "programming is easy",
    sound: 'sounds/phrases/programming_is_easy.wav',
  ),
  phrasesCard(
    jpNum: "Doko ni iku no",
    enNum: "where are you going",
    sound: 'sounds/phrases/where_are_you_going.wav',
  ),
  phrasesCard(
    jpNum: "Anata no namae wa nandesuka",
    enNum: "What is your name",
    sound: 'sounds/phrases/what_is_your_name.wav',
  ),
  phrasesCard(
    jpNum: "Watashi wa anime ga daisukidesu",
    enNum: "i love anime",
    sound: 'sounds/phrases/i_love_anime.wav',
  ),
  phrasesCard(
    jpNum: "Go kibun wa ikagadesu ka.",
    enNum: "how are you feeling",
    sound: 'sounds/phrases/how_are_you_feeling.wav',
  ),
  phrasesCard(
    jpNum: "Kimasu ka",
    enNum: "are you coming",
    sound: 'sounds/phrases/are_you_coming.wav',
  ),
  phrasesCard(
    jpNum: "Hai, ikimasu",
    enNum: "yes i am coming",
    sound: 'sounds/phrases/yes_im_coming.wav',
  ),
];

Card phrasesCard({
  required String sound,
  required String jpNum,
  required String enNum,
}) {
  return Card(
    margin: EdgeInsets.zero,
    shape: BeveledRectangleBorder(),
    child: ListTile(
      minTileHeight: 100,
      tileColor: Colors.blueAccent,
      iconColor: Colors.white,
      textColor: Colors.white,
      title: Text(jpNum),
      titleTextStyle: TextStyle(fontSize: 15),
      subtitle: Text(enNum),
      trailing: IconButton(
        onPressed: () async {
          final player = AudioPlayer();
          await player.play(AssetSource(sound));
        },
        icon: Icon(Icons.play_arrow),
      ),
    ),
  );
}
