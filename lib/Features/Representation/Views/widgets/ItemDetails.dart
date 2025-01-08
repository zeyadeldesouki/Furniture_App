import 'package:flutter/material.dart';
import 'package:furniture_app/Core/BuildAppBar.dart';
import 'package:furniture_app/Features/Representation/Views/ItemDetailsBody.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});
  static const kdetails = "details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        LeadingIcon: Icons.backspace,
        onPressed: () => Navigator.pop(context),
        ActionIcon: Icons.notifications_active,
      ),
      body: const ItemDetailsBody(),
    );
  }
}
