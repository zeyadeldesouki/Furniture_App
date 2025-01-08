import 'package:flutter/material.dart';
import 'package:furniture_app/Features/Data/Models/product_model/product_model.dart';
import 'package:furniture_app/Features/Representation/Views/widgets/Button.dart';
import 'package:furniture_app/Features/Representation/Views/widgets/ItemDescribtion.dart';
import 'package:furniture_app/Features/Representation/Views/widgets/productInfo.dart';

class ItemDetailsBody extends StatelessWidget {
  const ItemDetailsBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          productInfo(product: product),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.network(
                product.image ?? "",
                fit: BoxFit.cover,
                height: MediaQuery.sizeOf(context).height * 0.30,
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: ItemDescribtion(product: product),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Button(),
            
          ),
        ],
      ),
    );
  }
}
