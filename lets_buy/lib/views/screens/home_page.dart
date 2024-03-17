import 'dart:math';

import 'package:lets_buy/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu_open_outlined,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.CartPage);
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          "Home Page",
          style: Styles.titleStyle,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              )),
        ),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: s.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: s.height * 0.05,
                  width: s.width * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500.withOpacity(0.5),
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search",
                        style: Styles.textStyle,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: s.height * 0.02,
            ),
            Container(
              height: s.height * 0.2,
              width: s.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(
              height: s.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                "Category",
                style: Styles.catStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: AllData.allCategories
                      .map(
                        (e) => (e['id'] % (2) != 0)
                            ? Container(
                                margin: EdgeInsets.all(5),
                                height: s.height * 0.13,
                                width: s.width * 0.25,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: s.height * 0.1,
                                      width: s.width * 0.25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            const BorderRadius.vertical(
                                          top: Radius.circular(10),
                                        ),
                                        // color: Colors.red,
                                        // image: DecorationImage(
                                        //   image: NetworkImage(
                                        //     e['image'],
                                        //   ),
                                        //   fit: BoxFit.cover,
                                        // ),
                                      ),
                                    ),
                                    Text(
                                      e['category'].toString().replaceFirst(
                                          e['category'].toString()[0],
                                          e['category']
                                              .toString()[0]
                                              .toUpperCase()),
                                      overflow: TextOverflow.ellipsis,
                                      style: Styles.textStyle,
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                      )
                      .toList(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: AllData.allCategories
                      .map(
                        (e) => (e['id'] % (2) == 0)
                            ? Container(
                                margin: EdgeInsets.all(5),
                                height: s.height * 0.13,
                                width: s.width * 0.25,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: s.height * 0.1,
                                      width: s.width * 0.25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            const BorderRadius.vertical(
                                          top: Radius.circular(10),
                                        ),
                                        // color: Colors.red,
                                        // image: DecorationImage(
                                        //   image: NetworkImage(
                                        //     e['image'],
                                        //   ),
                                        //   fit: BoxFit.cover,
                                        // ),
                                      ),
                                    ),
                                    Text(
                                      e['category'].toString().replaceFirst(
                                          e['category'].toString()[0],
                                          e['category']
                                              .toString()[0]
                                              .toUpperCase()),
                                      overflow: TextOverflow.ellipsis,
                                      style: Styles.textStyle,
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
