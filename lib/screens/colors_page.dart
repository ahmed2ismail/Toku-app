import 'package:flutter/material.dart';
import 'package:language_learning_app/components/card_colors_item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 112, 201),
      appBar: AppBar(
        title: Text("Colors"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => colorsData[index],
        itemCount: colorsData.length,
      ),
    );
  }
}
