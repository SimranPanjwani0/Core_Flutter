import 'package:lets_buy/header.dart';

class LogInSuccessPage extends StatefulWidget {
  const LogInSuccessPage({super.key});

  @override
  State<LogInSuccessPage> createState() => _LogInSuccessPageState();
}

class _LogInSuccessPageState extends State<LogInSuccessPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: s.height * 0.4,
          width: s.width * 0.8,
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/037c/1971/7e79d6aff36a14346cb67f7ab013fc62?Expires=1702857600&Signature=ccbU0Yu0NmtFfS486yID4BPekTr0i6Co4ONjqsuIKz-M~x0dJljGL4rilYkV~Iscu2tvSmDmcdcimht0zEDU4pzj4r7OVgX9R8j-IdJzHCSVoP9nLT9MhqIddnMwRTmRIe9TgHI0qQL8hjtqqpG15h9Q0TpxRglNSnSf~fr0X3HUw3ldkVg7S9en-K5EoSXB249EHsQCY0BymdJeLtHPCJ3gal9iFoL7MVPjN4G9U~U2MjKNn5pJAlgxff2WWhtBDN9-EUZQNb1BA-rAKmpfkDbPy7-xUk5rVNIYAU589qIAwpcuUi7fHCXQSpcL~FyaLSvKIxLA1sFGWTAhvMzDhw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                ),
              ),
              Text(
                "Your account has been",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4058D6)),
              ),
              Text(
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4058D6)),
                "Successfully created",
              ),
              Text(
                "Now LogIn for better ",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4058D6)),
              ),
              Text(
                "Experience",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4058D6)),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xff4058D6),
    );
  }
}
