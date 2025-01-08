import 'package:flutter/material.dart';
import 'package:furniture_app/Features/Data/Models/product_model/product_model.dart';
import 'package:furniture_app/Features/Representation/Views/widgets/ItemDetails.dart';
import 'package:furniture_app/Features/Representation/Views/widgets/Productitem.dart';

class ProdctItemGridView extends StatelessWidget {
  const ProdctItemGridView({super.key, required this.products});

  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length - 1,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ItemDetails.kdetails,
                    arguments: products[index]);
              },
              child: ProdctItem(
                productModel: products[index],
              ),
            );
          }),
    );
  }
}
