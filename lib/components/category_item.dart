import 'package:flutter/material.dart';

GestureDetector category({
  required String categoryName,
  required Color color,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 60,
      width: double.infinity,
      color: color,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        categoryName,
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
    ),
  );
}
