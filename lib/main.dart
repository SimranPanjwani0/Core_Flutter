import 'package:exam_1/headers.dart';

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
        MyRoutes.detailpage: (context) => const DetailPage(),
        MyRoutes.cartpage: (context) => const CartPage(),
      },
    );
  }
}
