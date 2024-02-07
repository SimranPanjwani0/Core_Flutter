import 'package:flutter/cupertino.dart%20%20';
import 'package:lets_buy/header.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    Map product = (ModalRoute.of(context)?.settings.arguments as Map?) ??
        AllData.allProduct[0];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product['category'],
          style: Styles.titleStyle,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: AllData.allProduct
                .map((e) => (e['category'] == product['category'])
                    ? Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(MyRoutes.DetailPage, arguments: e);
                            },
                            child: Container(
                              height: s.height * 0.25,
                              width: s.width * 0.9,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: s.height * 0.25,
                                    width: s.width * 0.35,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(15),
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(e['thumbnail']),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Stack(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e['title'],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              e['brand'],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(e['stock'].toString() +
                                                " left only"),
                                          ],
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 100,
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              fav
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    : Container())
                .toList(),
          ),
        ),
      ),
    );
  }
}
