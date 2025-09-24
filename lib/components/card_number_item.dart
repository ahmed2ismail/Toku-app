import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final List numbers = [
  number(
    image: "assets/images/numbers/number_one.png",
    jpNum: "ichi",
    enNum: "one",
    sound: 'sounds/numbers/number_one_sound.mp3',
  ),
  number(
    image: "assets/images/numbers/number_two.png",
    jpNum: "Ni",
    enNum: "Two",
    sound: 'sounds/numbers/number_two_sound.mp3',
  ),
  number(
    image: "assets/images/numbers/number_three.png",
    jpNum: "San",
    enNum: "Three",
    sound: 'sounds/numbers/number_three_sound.mp3',
  ),
  number(
    image: "assets/images/numbers/number_four.png",
    jpNum: "Shi",
    enNum: "four",
    sound: 'sounds/numbers/number_four_sound.mp3',
  ),
  number(
    image: "assets/images/numbers/number_five.png",
    jpNum: "Go",
    enNum: "five",
    sound: 'sounds/numbers/number_five_sound.mp3',
  ),
  number(
    image: "assets/images/numbers/number_six.png",
    jpNum: "Roku",
    enNum: "six",
    sound: 'sounds/numbers/number_six_sound.mp3',
  ),
  number(
    image: "assets/images/numbers/number_seven.png",
    jpNum: "Sebun",
    enNum: "seven",
    sound: 'sounds/numbers/number_seven_sound.mp3',
  ),
  number(
    image: "assets/images/numbers/number_eight.png",
    jpNum: "hachi",
    enNum: "eight",
    sound: 'sounds/numbers/number_eight_sound.mp3',
  ),
  number(
    image: "assets/images/numbers/number_nine.png",
    jpNum: "kyu",
    enNum: "nine",
    sound: 'sounds/numbers/number_nine_sound.mp3',
  ),
  number(
    image: "assets/images/numbers/number_ten.png",
    jpNum: "ju",
    enNum: "ten",
    sound: 'sounds/numbers/number_ten_sound.mp3',
  ),
];

Card number({
  required String image,
  required String sound,
  required String jpNum,
  required String enNum,
}) {
  return Card(
    margin: EdgeInsets.zero,
    shape: BeveledRectangleBorder(),
    child: Row(
      children: [
        Container(
          color: Color(0xffFFF6DC),
          width: 80,
          child: Image.asset(image, fit: BoxFit.contain, width: 60, height: 60),
        ),
        Expanded(
          child: ListTile(
            tileColor: Color(0xffEF9235),
            iconColor: Colors.white,
            textColor: Colors.white,
            title: Text(jpNum),
            subtitle: Text(enNum),
            trailing: IconButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource(sound));
              },
              icon: Icon(Icons.play_arrow),
            ),
          ),
        ),
      ],
    ),
  );
}
