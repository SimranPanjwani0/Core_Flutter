import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Red & White",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffff5353),
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  G ",
                  style: TextStyle(
                    color: Color(0xff55a661),
                    fontSize: 25,
                  ),
                ),
                TextSpan(
                  text: "R ",
                  style: TextStyle(
                    color: Color(0xfff43f33),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "APHICS\n",
                  style: TextStyle(
                    color: Color(0xff5aa658),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "\t\tFLUTT",
                  style: TextStyle(
                    color: Color(0xff1f95f5),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "E ",
                  style: TextStyle(
                    color: Color(0xfff43f33),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "R\n",
                  style: TextStyle(
                    color: Color(0xff1f95f5),
                    fontSize: 25,
                  ),
                ),
                TextSpan(
                  text: "\t\t\t\t\t AN",
                  style: TextStyle(
                    color: Color(0xff50ab54),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "D ",
                  style: TextStyle(
                    color: Color(0xfff43f33),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "ROID\n",
                  style: TextStyle(
                    color: Color(0xff50ab54),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "DESIGN",
                  style: TextStyle(
                    color: Color(0xfff2bd21),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "& ",
                  style: TextStyle(
                    color: Color(0xfff43f33),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "DEVELOP\n",
                  style: TextStyle(
                    color: Color(0xfff2bd21),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tW ",
                  style: TextStyle(
                    color: Color(0xfff73f3a),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "EB\n",
                  style: TextStyle(
                    color: Color(0xff2b92e6),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "\t\t\t\t\tFAS",
                  style: TextStyle(
                    color: Color(0xffced749),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "H ",
                  style: TextStyle(
                    color: Color(0xfff43f33),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "ION\n",
                  style: TextStyle(
                    color: Color(0xffced749),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "ANIMAT",
                  style: TextStyle(
                    color: Color(0xff07947f),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: " I ",
                  style: TextStyle(
                    color: Color(0xffee4639),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "ON\n",
                  style: TextStyle(
                    color: Color(0xff07947f),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tI",
                  style: TextStyle(
                    color: Color(0xff2892ef),
                    fontSize: 25,
                  ),
                ),
                TextSpan(
                  text: " T ",
                  style: TextStyle(
                    color: Color(0xfff04532),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "A-CS+\n",
                  style: TextStyle(
                    color: Color(0xff2892ef),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "\t\t\t\t GAM",
                  style: TextStyle(
                    color: Color(0xfffabe0d),
                    fontSize: 25,
                    letterSpacing: 10,
                  ),
                ),
                TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: Color(0xfff04532),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
