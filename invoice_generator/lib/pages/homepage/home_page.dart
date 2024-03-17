import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_generator/pages/homepage/components/background_widget.dart';
import 'package:invoice_generator/utils/route_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: [
          backGroundWidget(
            s: s,
          ),
          Column(
            children: [
              SizedBox(
                height: s.height * 0.05,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xff001328),
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.detailpage);
        },
        icon: const Icon(
          Icons.add,
          color: Color(
            0xff00bfe5,
          ),
        ),
        label: const Text(
          "New Invoice",
          style: TextStyle(
            color: Color(
              0xff00bfe5,
            ),
          ),
        ),
      ),
    );
  }
}
