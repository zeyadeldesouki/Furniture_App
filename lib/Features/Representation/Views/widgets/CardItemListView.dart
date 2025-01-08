import 'package:flutter/material.dart';
import 'package:furniture_app/Features/Data/Models/categoery_model/categoery_model.dart';
import 'package:furniture_app/Features/Representation/Views/widgets/CardItem.dart';

class CardItemListView extends StatelessWidget {
  const CardItemListView({super.key, required this.categories});
  final List<CategoeryModel> categories;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).width * 0.49,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CardItem(categoeryModel: categories[index]),
          );
        },
      ),
    );
  }
}
