import 'package:appmania/headers.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);

    Map<String, dynamic> r = (ModalRoute.of(context)!.settings.arguments ??
        AllData.allRecipies[0]) as Map<String, dynamic>;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: s.height * 0.5,
                width: s.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      r['image'],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: s.height * 0.05,
                left: s.width * 0.05,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  r['name'],
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
