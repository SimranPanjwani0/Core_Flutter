import 'package:flutter/material.dart';
import 'package:invoice_generator/pages/detailpage/detail_page.dart';
import 'package:invoice_generator/pages/homepage/home_page.dart';
import 'package:invoice_generator/pages/splashpage/splash_page.dart';

class MyRoutes {
  static String splashpage = '/';
  static String homepage = 'splashpage';
  static String detailpage = 'detailpage';

  static Map<String, WidgetBuilder> routes = {
    splashpage: (context) => const SplashPage(),
    homepage: (context) => const HomePage(),
    detailpage: (context) => const DetailPage(),
  };
}
