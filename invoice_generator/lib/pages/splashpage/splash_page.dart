import 'dart:async';

import 'package:flutter/material.dart';
import 'package:invoice_generator/pages/splashpage/components/body_widget.dart';
import 'package:invoice_generator/utils/route_utils.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        Navigator.pushReplacementNamed(
          context,
          MyRoutes.homepage,
        );
        timer.cancel();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);

    return Scaffold(
      body: bodyWidget(s: s),
    );
  }
}
