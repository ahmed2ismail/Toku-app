import 'package:flutter/material.dart';
import 'package:language_learning_app/components/card_phrases_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phrases"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => phrasesData[index],
        itemCount: phrasesData.length,
      ),
    );
  }
}