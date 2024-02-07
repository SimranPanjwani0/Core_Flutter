import 'package:lets_buy/views/screens/home_page.dart';

import 'header.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.SplashPage: (context) => SplashPage(),
        MyRoutes.HomePage: (context) => HomePage(),
        MyRoutes.LogInPage: (context) => LogInPage(),
        MyRoutes.VerificationPage: (context) => VerificationPage(),
        MyRoutes.SignUpPage: (context) => SignUpPage(),
        MyRoutes.DetailPage: (context) => DetailPage(),
        MyRoutes.GetStartedPage: (context) => GetStartedPage(),
        MyRoutes.SignUpSuccessPage: (context) => SignUpSuccessPage(),
        MyRoutes.LogInSuccessPage: (context) => LogInSuccessPage(),
        MyRoutes.NotificationPage: (context) => NotificationPage(),
        MyRoutes.SelectLanguagePage: (context) => SelectLanguagePage(),
        MyRoutes.PaymentPage: (context) => PaymentPage(),
        MyRoutes.CartPage: (context) => CartPage(),
        MyRoutes.OTPPage: (context) => OTPPage(),
        MyRoutes.CategoryPage: (context) => CategoryPage(),
      },
    );
  }
}
