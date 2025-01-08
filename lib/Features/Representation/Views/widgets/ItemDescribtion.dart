import 'package:flutter/material.dart';
import 'package:furniture_app/Features/Data/Models/product_model/product_model.dart';

class ItemDescribtion extends StatelessWidget {
  const ItemDescribtion({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "${product.subTitle}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${product.description}"),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
