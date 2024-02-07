import 'package:lets_buy/header.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff5B93E6),
              Color(0xff3C2DE1),
              Color(0xff3C2DE1),
            ],
          ),
        ),
        child: Column(
          children: [
            Gap(100),
            Container(
              height: size.height * 0.3,
              // child: Image.asset(ImgPath.path + ImgPath.notificationgif),
            ),
            Gap(46),
            Text(
              "Notifications",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Text(
              "Stay Notified about new course\nupdates, scoreboard stats and\n        new friend follows",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xffE3E3E3),
                fontWeight: FontWeight.w400,
              ),
            ),
            Gap(35),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(MyRoutes.HomePage);
              },
              child: Container(
                height: 50,
                width: 327,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: Color(0xff3C2DE1),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "ALLOW",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Gap(30),
            TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffE3E3E3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
