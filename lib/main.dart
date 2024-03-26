import 'package:clock_app_1/utils/route_utils.dart';
import 'package:clock_app_1/views/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.homepage: (context) => const HomePage(),
      },
    );
  }
}
