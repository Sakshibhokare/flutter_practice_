import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(216, 240, 253, 1),
      child: Column(
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium,),
          const SizedBox(height: 5,),
          Text('\$$price'),
          const SizedBox(height: 5,),
          Image(
            image: AssetImage(image),
            height:175 ,
            )
        ],
      ),
    );
  }
}