import 'package:clock_app_1/views/screens/analog_page.dart';
import 'package:clock_app_1/views/screens/alarm_page.dart';
import 'package:clock_app_1/views/screens/stopwatch_page.dart';
import 'package:clock_app_1/views/screens/timer_page.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  List pages = [
    const AlarmPage(),
    const AnalogPage(),
    const TimerPage(),
    const StopWatchPage(),
  ];
  onPageChanged(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
          controller: _pageController,
          itemCount: pages.length,
          onPageChanged: (index) {
            setState(() {
              _activePage = index;
            });
          },
          itemBuilder: (BuildContext context, int index) {
            return pages[index];
          }),
      bottomNavigationBar: SizedBox(
        height: s.height * 0.1,
        width: s.width,
        child: SalomonBottomBar(
          backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            // Alarm
            SalomonBottomBarItem(
              icon: Icon(
                Icons.alarm,
                color: _currentIndex == 0 ? Colors.purple : Colors.white,
              ),
              title: const Text("Alarm"),
              selectedColor: (_currentIndex == 0) ? Colors.purple : null,
            ),

            // Clock
            SalomonBottomBarItem(
              icon: Icon(
                Icons.watch_later_outlined,
                color: _currentIndex == 1 ? Colors.pink : Colors.white,
              ),
              title: const Text("Clock"),
              selectedColor: (_currentIndex == 1) ? Colors.pink : null,
            ),

            // Timer
            SalomonBottomBarItem(
              icon: Icon(
                Icons.hourglass_bottom_outlined,
                color: _currentIndex == 2 ? Colors.orange : Colors.white,
              ),
              title: const Text("Timer"),
              selectedColor: (_currentIndex == 2) ? Colors.orange : null,
            ),

            // Stopwatch
            SalomonBottomBarItem(
              icon: Icon(
                Icons.timer,
                color: _currentIndex == 3 ? Colors.teal : Colors.white,
              ),
              title: const Text("Stopwatch"),
              selectedColor: (_currentIndex == 3) ? Colors.teal : null,
            ),
          ],
        ),
      ),
    );
  }
}
