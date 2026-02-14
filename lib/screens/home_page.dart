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
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text("Toku"),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: Column(
        children: [
          category(
            categoryName: "Numbers",
            color: const Color(0xffEF9235),
            onTap: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => const NumbersPage())),
          ),
          category(
            categoryName: "Family Members",
            color: Colors.green,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const FamilyMembersPage()),
            ),
          ),
          category(
            categoryName: "Colors",
            color: Colors.purple,
            onTap: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => const ColorsPage())),
          ),
          category(
            categoryName: "Phrases",
            color: Colors.blueAccent,
            onTap: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => const PhrasesPage())),
          ),
          Flexible(flex: 1, child: Container(color: const Color(0xffFFF6DC))),
        ],
      ),
    );
  }
}
