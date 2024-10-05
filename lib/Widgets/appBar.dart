import 'package:flutter/material.dart';
import 'package:x_mark/Utils/styles.dart';
import 'package:x_mark/Widgets/button.dart';

AppBar dashBoardAppBar = AppBar(
  backgroundColor: appBarColor,
  surfaceTintColor: appBarColor,
  leading: IconButton(
      onPressed: () {}, icon: const Icon(Icons.menu, color: Colors.white)),
  title: const Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('X', style: whiteLargeTextStyle),
      Text('mark', style: whiteLargeTextStyle),
    ],
  ),
  actions: [
    CircleAvatar(
      backgroundColor: Colors.blueAccent.shade100,
    ),
    sizedBox(0.0, 5.0)
  ],
  centerTitle: true,
);

//////////////////////////////////////////////////////////////////////////////////////
/// Custom AppBar
///
AppBar customAppBar(text, context) {
  return AppBar(
    backgroundColor: appBarColor,
    surfaceTintColor: appBarColor,
    title: Text(text, style: whiteLargeTextStyle),
    leading: backArrowButton(context),
  );
}
