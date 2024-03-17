import 'package:flutter/material.dart';

Widget backGroundWidget({required Size s}) {
  return Container(
    height: s.height,
    width: s.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://static.tildacdn.com/tild3838-3335-4366-a237-613165336266/1-recortada.jpg",
        ),
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
      ),
    ),
  );
}
