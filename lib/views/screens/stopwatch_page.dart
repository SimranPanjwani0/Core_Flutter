import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchPage extends StatefulWidget {
  const StopWatchPage({super.key});

  @override
  State<StopWatchPage> createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  int sec = 0;
  int min = 0;
  int h = 0;
  String second = "00";
  String minute = "00";
  String hour = "00";

  Timer? timer;
  bool started = false;

  List flags = [];
//Stop Process
  void stop() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

//Reset Process
  void reset() {
    timer!.cancel();
    setState(() {
      sec = 0;
      min = 0;
      h = 0;

      second = "00";
      minute = "00";
      hour = "00";

      started = false;
    });
  }

//Lap Process
  void addLaps() {
    String flag = "$hour:$minute:$second";
    setState(() {
      flags.add(flag);
    });
  }

//Start Process
  void start() {
    started = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      sec++;
      if (sec > 59) {
        if (min > 59) {
          h++;
          min = 0;
        } else {
          min++;
          sec = 0;
        }
      }
      setState(() {
        min = min;
        h = h;

        second = (sec >= 10) ? "$sec" : "0$sec";
        hour = (sec >= 10) ? "$h" : "0$h";
        minute = (min >= 10) ? "$min" : "0$min";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        foregroundColor: Colors.white,
        title: const Text(
          'Stop Watch',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: s.height * 0.1,
              ),
              //Timer
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Time
                      Text(
                        "$hour : $minute : $second",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 56,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Start / Pause  Button
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                reset();
                                flags.clear();
                              });
                            },
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xff1c1c1e),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "Reset",
                                style: TextStyle(
                                  color: Color(0xff99989d),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),

                          //Lap Icon
                          IconButton(
                            onPressed: () {
                              addLaps();
                            },
                            icon: const Icon(
                              Icons.flag,
                              color: Colors.white,
                            ),
                          ),

                          //Reset Button
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                (!started) ? start() : stop();
                              });
                            },
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue.shade600,
                                // color: Color(0xff0b2a11),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                (!started) ? "Start" : "Pause",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: flags.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lap ${index + 1}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            " ${flags[index]}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
