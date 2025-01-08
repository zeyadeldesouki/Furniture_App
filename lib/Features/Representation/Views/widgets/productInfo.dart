import 'package:flutter/material.dart';
import 'package:furniture_app/Features/Data/Models/product_model/product_model.dart';
import 'package:furniture_app/Features/Representation/Views/widgets/CircleAvatarWidget.dart';

class productInfo extends StatelessWidget {
  const productInfo({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.45,
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(product.category?.toUpperCase() ?? ""),
            const SizedBox(
              height: 10,
            ),
            Text(
              product.title ?? "",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("price"),
            const SizedBox(
              height: 10,
            ),
            Text(
              r"$" "${product.price ?? "500"}",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Avalliable Colors ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                CircleAvatarWidget(
                  color: Colors.red,
                ),
                CircleAvatarWidget(
                  color: Colors.blue,
                ),
                CircleAvatarWidget(
                  color: Colors.pink,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
