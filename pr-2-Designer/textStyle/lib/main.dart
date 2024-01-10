import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "🛍️ List of Fruits",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff009788),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "🍎 Apple",
                  style: TextStyle(
                    color: Color(0xffe63130),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍇 Graps",
                  style: TextStyle(
                    color: Color(0xff9f3bb4),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍒 Cherry",
                  style: TextStyle(
                    color: Color(0xffa323b7),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍓 Strawberry",
                  style: TextStyle(
                    color: Color(0xffeb1c61),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🥭 Mango",
                  style: TextStyle(
                    color: Color(0xfffb960b),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍍 Pineapple",
                  style: TextStyle(
                    color: Color(0xff5ea75d),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍋 Lemon",
                  style: TextStyle(
                    color: Color(0xfff5c00d),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍉 Watermelon",
                  style: TextStyle(
                    color: Color(0xff8ec344),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🥥 Coconut",
                  style: TextStyle(
                    color: Color(0xff8),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
