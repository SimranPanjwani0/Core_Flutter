import 'package:exam_1/headers.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          "CartPage",
          style: MyStyles.titleStyle,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: AllData.favWallpapers
              .map(
                (e) => Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      height: s.height * 0.3,
                      width: s.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(e['previewURL']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 320,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            AllData.favWallpapers.remove(e);
                          });
                        },
                        child: Container(
                          height: s.height * 0.08,
                          width: s.width * 0.08,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.horizontal_rule_rounded,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
