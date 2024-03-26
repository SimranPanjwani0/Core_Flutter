import 'dart:math';

import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  int second = 0;
  int minute = 0;
  bool minRun = false;
  bool secRun = false;

  timer() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (second < 0 || minute > 0) {
          minute--;
        }
        if (second < 0 && minute > 0) {
          second = 59;
        }
        if (second > 0 && (minute > 0 || minute == 0)) {
          second--;
        }
        if (minute == 0) {
          minRun = false;
        }
        if (minute == 0 && second == 0) {
          secRun = false;
        }
        if (secRun || minRun) {
          timer();
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    timer();
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: s.height * 0.02,
          ),
          Container(
            height: s.height * 0.6,
            width: s.width * 0.85,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.teal,
                  blurRadius: 70,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Stack(
              children: [
                Text(
                  "$minute : $second",
                  style: const TextStyle(
                    fontSize: 60,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Minute
                Positioned(
                  left: s.width * 0.15,
                  top: s.height * 0.05,
                  child: Visibility(
                    visible: minRun,
                    child: Transform.scale(
                      scale: 5,
                      child: CircularProgressIndicator(
                        strokeWidth: 3,
                        value: minute / 60,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
                //Second
                Positioned(
                  left: s.width * 0.15,
                  top: s.height * 0.03,
                  child: Visibility(
                    visible: secRun,
                    child: Transform.scale(
                      scale: 8,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        value: second * pi * 2 / 60,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: s.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Minute
              Container(
                height: s.height * 0.07,
                width: s.width * 0.3,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.teal,
                      blurRadius: 30,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: ListWheelScrollView(
                  itemExtent: 30,
                  useMagnifier: true,
                  magnification: 1.2,
                  diameterRatio: 0.5,
                  onSelectedItemChanged: (index) {
                    setState(() {
                      minute = index;
                    });
                  },
                  children: List.generate(
                    60,
                    (index) => Text(
                      "$index",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ),
              //Second
              Container(
                height: s.height * 0.07,
                width: s.width * 0.3,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.teal,
                      blurRadius: 30,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: ListWheelScrollView(
                  itemExtent: 30,
                  useMagnifier: true,
                  magnification: 1.2,
                  diameterRatio: 0.5,
                  onSelectedItemChanged: (index) {
                    setState(() {
                      second = index;
                    });
                  },
                  children: List.generate(
                    60,
                    (index) => Text(
                      "$index",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: s.height * 0.06,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                minRun = true;
                secRun = true;
                timer();
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.teal,
              ),
            ),
            child: const Text(
              "Start",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: s.height * 0.05,
          ),
        ],
      ),
    );
  }
}
