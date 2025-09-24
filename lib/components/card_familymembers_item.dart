import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final List familyMembersData = [
  familyMembersCard(
    image: "assets/images/family_members/family_father.png",
    jpNum: "Chichioya",
    enNum: "father",
    sound: 'sounds/family_members/father.wav',
  ),
  familyMembersCard(
    image: "assets/images/family_members/family_daughter.png",
    jpNum: "Musume",
    enNum: "daughter",
    sound: 'sounds/family_members/daughter.wav',
  ),
  familyMembersCard(
    image: "assets/images/family_members/family_grandfather.png",
    jpNum: "Ojisan",
    enNum: "Grand Father",
    sound: 'sounds/family_members/grand father.wav',
  ),
  familyMembersCard(
    image: "assets/images/family_members/family_mother.png",
    jpNum: "Hahaoya",
    enNum: "mother",
    sound: 'sounds/family_members/mother.wav',
  ),
  familyMembersCard(
    image: "assets/images/family_members/family_grandmother.png",
    jpNum: "Sobo",
    enNum: "Grand mother",
    sound: 'sounds/family_members/grand mother.wav',
  ),
  familyMembersCard(
    image: "assets/images/family_members/family_older_brother.png",
    jpNum: "Nisan",
    enNum: "older brother",
    sound: 'sounds/family_members/older bother.wav',
  ),
  familyMembersCard(
    image: "assets/images/family_members/family_older_sister.png",
    jpNum: "Ane",
    enNum: "older sister",
    sound: 'sounds/family_members/older sister.wav',
  ),
  familyMembersCard(
    image: "assets/images/family_members/family_son.png",
    jpNum: "Musuko",
    enNum: "son",
    sound: 'sounds/family_members/son.wav',
  ),
  familyMembersCard(
    image: "assets/images/family_members/family_younger_brother.png",
    jpNum: "Ototo",
    enNum: "younger brother",
    sound: 'sounds/family_members/younger brohter.wav',
  ),
  familyMembersCard(
    image: "assets/images/family_members/family_younger_sister.png",
    jpNum: "imouto",
    enNum: "younger sister",
    sound: 'sounds/family_members/younger sister.wav',
  ),
];

Card familyMembersCard({
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
            tileColor: Colors.green,
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
