import 'package:flutter/material.dart';

Widget productCard(int index) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 6,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset(
            'assets/images/m${index + 1}.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "Men's Shirt",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 4),
        const Text(
          "\$49.99",
          style: TextStyle(
            color: Color(0xFF4A80F0),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        IconButton(
          icon: const Icon(
            Icons.add_shopping_cart_outlined,
            color: Color(0xFF4A80F0),
          ),
          onPressed: () {},
        ),
      ],
    ),
  );
}
