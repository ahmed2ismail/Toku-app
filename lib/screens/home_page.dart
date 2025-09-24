import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category_item.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/family_members_page.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        title: Text("Toku"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: Column(
        children: [
          category(
            categoryName: "Numbers",
            color: Color(0xffEF9235),
            onTap: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => NumbersPage())),
          ),
          category(
            categoryName: "Family Members",
            color: Colors.green,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => FamilyMembersPage()),
            ),
          ),
          category(
            categoryName: "Colors",
            color: Colors.purple,
            onTap: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => ColorsPage())),
          ),
          category(
            categoryName: "Phrases",
            color: Colors.blueAccent,
            onTap: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => PhrasesPage())),
          ),
          Flexible(flex: 1, child: Container(color: Color(0xffFFF6DC))),
        ],
      ),
    );
  }
}
