import 'package:exam_1/headers.dart';

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
        AllData.allWallpapers[0]) as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DetailPage",
          style: MyStyles.titleStyle,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.cartpage);
            },
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 20,
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            height: s.height,
            width: s.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage((r['largeImage'] == null)
                    ? "https://avatars.mds.yandex.net/i?id=20e7df6f1b543fb1eb199ea0db80d62b-4119748-images-thumbs&n=13"
                    : r['largeImage']),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: s.height * 0.32,
                        width: s.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: s.height * 0.25,
                                  width: s.width * 0.4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        r['userImageURL'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    r['user'],
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    r['user_id'].toString(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        const TextSpan(
                                          text: "Likes :  ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${r['likes']}",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        const TextSpan(
                                          text: "Downloads :  ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${r['downloads']}",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        const TextSpan(
                                          text: "Collections :  ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${r['collections']}",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        const TextSpan(
                                          text: "Comments : ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${r['comments']}",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        const TextSpan(
                                          text: "Views :  ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${r['views']}",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 220,
                        left: 310,
                        child: IconButton(
                          onPressed: () {
                            if (AllData.favWallpapers.contains(r)) {
                              AllData.favWallpapers.remove(r);
                            } else {
                              AllData.favWallpapers.add(r);
                            }
                            setState(() {});
                          },
                          icon: AllData.favWallpapers.contains(r)
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                )
                              : const Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
