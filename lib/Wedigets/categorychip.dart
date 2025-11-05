import 'package:flutter/material.dart';

Widget categoryChip(String title, bool selected) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: selected ? const Color(0xFF4A80F0) : Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: const Color(0xFF4A80F0)),
    ),
    child: Text(
      title,
      style: TextStyle(
        color: selected ? Colors.white : const Color(0xFF4A80F0),
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
