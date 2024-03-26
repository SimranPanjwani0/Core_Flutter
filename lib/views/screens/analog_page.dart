import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:clock_app_1/utils/data_utils.dart';

class AnalogPage extends StatefulWidget {
  const AnalogPage({super.key});

  @override
  State<AnalogPage> createState() => _AnalogPageState();
}

class _AnalogPageState extends State<AnalogPage> {
  DateTime d = DateTime.now();

  void time() {
    setState(
      () {
        Future.delayed(
          const Duration(seconds: 1),
          () {
            d = DateTime.now();
            time();
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    time();
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: s.height,
            width: s.width,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          Positioned(
            top: s.height * 0.1,
            left: s.width * 0.05,
            child: Container(
              height: s.height * 0.15,
              width: s.width * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: const Offset(5, 5),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${(d.hour < 10) ? d.hour.toString().padLeft(2, "0") : d.hour.toString()} : ${(d.minute < 10) ? d.minute.toString().padLeft(2, "0") : d.minute.toString()} : ${(d.second < 10) ? d.second.toString().padLeft(2, "0") : d.second.toString()} ${d.hour < 12 ? "AM" : "PM"}",
                    style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    "${weekDays[d.weekday - 1]} ${d.day} ${months[d.month - 1]}",
                    style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: s.width * 0.2,
            child: Container(
              height: s.height * 0.4,
              width: s.width * 0.7,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(5),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  //Dials
                  ...List.generate(
                    60,
                    (index) => Transform.rotate(
                      angle: index * pi * 2 / 60,
                      child: Divider(
                        color: index % 15 == 0 ? Colors.red : Colors.black,
                        thickness: index % 15 == 0
                            ? 5
                            : index % 5 == 0
                                ? 3
                                : 2,
                        endIndent: index % 15 == 0
                            ? s.width * 0.6
                            : index % 5 == 0
                                ? s.width * 0.63
                                : s.width * 0.65,
                      ),
                    ),
                  ),
                  //Hour hand
                  Transform.rotate(
                    angle: d.hour * pi * 2 / 12,
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Divider(
                        color: Colors.black,
                        thickness: 4,
                        indent: s.width * 0.2,
                        endIndent: s.width * 0.35,
                      ),
                    ),
                  ),
                  //Minute hand
                  Transform.rotate(
                    angle: d.minute * pi * 2 / 60,
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Divider(
                        color: Colors.black,
                        thickness: 3,
                        indent: s.width * 0.15,
                        endIndent: s.width * 0.35,
                      ),
                    ),
                  ),
                  //Second hand
                  Transform.rotate(
                    angle: d.second * pi * 2 / 60,
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Divider(
                        color: Colors.red,
                        thickness: 2,
                        indent: s.width * 0.08,
                        endIndent: s.width * 0.35,
                      ),
                    ),
                  ),
                  //Center
                  CircleAvatar(
                    radius: 7,
                    // foregroundColor: Colors.red[900],
                    backgroundColor: Colors.red[900],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
