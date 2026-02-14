import 'package:flutter/material.dart';
import 'package:language_learning_app/components/card_number_item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => numbers[index],
        itemCount: numbers.length,
      ),
    );
  }

  // ListView.builder العادية لو مش هنستخدم ال ListView دي تستخدم مع ال getList ال
  // List<Widget> getList(List numbers) {
  //   List<Widget> itemList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemList.add(numbers[i]);
  //   }
  //   return itemList;
  // }
}
