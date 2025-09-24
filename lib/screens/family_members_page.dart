import 'package:flutter/material.dart';
import 'package:language_learning_app/components/card_familymembers_item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Members"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => familyMembersData[index],
        itemCount: familyMembersData.length,
      ),
    );
  }
}