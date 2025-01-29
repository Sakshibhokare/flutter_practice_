import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  const ProductCard({
    super.key,
    required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(216, 240, 253, 1),
      child: Column(
        children: [
          Text(title)
        ],
      ),
    );
  }
}