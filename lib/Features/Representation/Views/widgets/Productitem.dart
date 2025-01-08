import 'package:flutter/material.dart';
import 'package:furniture_app/Features/Data/Models/product_model/product_model.dart';

class ProdctItem extends StatelessWidget {
  const ProdctItem({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.45,
      child: AspectRatio(
        aspectRatio: 1,
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -100,
                left: 0,
                right: 0,
                child: Image.network(
                  width: 50,
                  height: 350,
                  productModel.image ?? "",
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: MediaQuery.of(context).size.height * 0.032,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    productModel.title!,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: MediaQuery.of(context).size.height * 0.004,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    productModel.price.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
