import 'package:flutter/material.dart';

Widget bodyWidget({required Size s}) {
  return Stack(
    children: [
      Container(
        height: s.height,
        width: s.width,
        color: Colors.grey.shade400,
      ),
      Container(
        height: s.height,
        width: s.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/invoice.gif"),
          ),
        ),
      ),
    ],
  );
}
