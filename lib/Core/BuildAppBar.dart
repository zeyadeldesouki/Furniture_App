import 'package:flutter/material.dart';

AppBar buildAppBar(
    {required IconData LeadingIcon,
    required IconData ActionIcon,
    void Function()? onPressed}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      onPressed: onPressed ?? () {},
      icon: Icon(LeadingIcon),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(ActionIcon),
      ),
    ],
  );
}
