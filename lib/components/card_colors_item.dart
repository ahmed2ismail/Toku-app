import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final List colorsData = [
  colorsCard(
    image: "assets/images/colors/color_black.png",
    jpNum: "Kuro",
    enNum: "black",
    sound: 'sounds/colors/black.wav',
  ),
  colorsCard(
    image: "assets/images/colors/color_brown.png",
    jpNum: "Chairo",
    enNum: "brown",
    sound: 'sounds/colors/brown.wav',
  ),
  colorsCard(
    image: "assets/images/colors/color_dusty_yellow.png",
    jpNum: "Dasutiiero",
    enNum: "dusty yellow",
    sound: 'sounds/colors/dusty yellow.wav',
  ),
  colorsCard(
    image: "assets/images/colors/color_gray.png",
    jpNum: "Gure",
    enNum: "gray",
    sound: 'sounds/colors/gray.wav',
  ),
  colorsCard(
    image: "assets/images/colors/color_green.png",
    jpNum: "Midori",
    enNum: "green",
    sound: 'sounds/colors/green.wav',
  ),
  colorsCard(
    image: "assets/images/colors/color_red.png",
    jpNum: "Aka",
    enNum: "red",
    sound: 'sounds/colors/red.wav',
  ),
  colorsCard(
    image: "assets/images/colors/color_white.png",
    jpNum: "Shiro",
    enNum: "white",
    sound: 'sounds/colors/white.wav',
  ),
  colorsCard(
    image: "assets/images/colors/yellow.png",
    jpNum: "Kiiro",
    enNum: "yello",
    sound: 'sounds/colors/yello.wav',
  ),
];

Card colorsCard({
  required String image,
  required String sound,
  required String jpNum,
  required String enNum,
}) {
  return Card(
    margin: EdgeInsets.zero,
    shape: const BeveledRectangleBorder(),
    child: Row(
      children: [
        Container(
          color: const Color(0xffFFF6DC),
          width: 80,
          child: Image.asset(image, fit: BoxFit.contain, width: 60, height: 60),
        ),
        Expanded(
          child: ListTile(
            tileColor: Colors.purple,
            iconColor: Colors.white,
            textColor: Colors.white,
            title: Text(jpNum),
            subtitle: Text(enNum),
            trailing: IconButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource(sound));
              },
              icon: const Icon(Icons.play_arrow),
            ),
          ),
        ),
      ],
    ),
  );
}
