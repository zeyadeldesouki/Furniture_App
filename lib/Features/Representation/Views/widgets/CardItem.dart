import 'package:flutter/material.dart';
import 'package:furniture_app/Features/Data/Models/categoery_model/categoery_model.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.categoeryModel,
  });

  final CategoeryModel categoeryModel;
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
                  categoeryModel.image ?? "",
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: MediaQuery.of(context).size.height * 0.032,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    categoeryModel.title!,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.004,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    categoeryModel.numOfProducts.toString(),
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
