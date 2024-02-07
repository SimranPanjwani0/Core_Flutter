import 'dart:math';

import 'package:flutter/cupertino.dart%20%20';
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
        leading: const Icon(
          Icons.menu_open_outlined,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.CartPage);
            },
            icon: const Icon(
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
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
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
              verticalDirection: VerticalDirection.up,
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
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                      ),
                      const SizedBox(
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
                    backgroundColor: Colors.grey.shade500.withOpacity(0.5),
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.search_rounded,
                    color: Colors.black,
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
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: AllData.allCategories
                      .map(
                        (e) => (e['id'] % (2) != 0)
                            ? GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                      MyRoutes.CategoryPage,
                                      arguments: e);
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  height: s.height * 0.13,
                                  width: s.width * 0.25,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Container(
                                      //   height: s.height * 0.1,
                                      //   width: s.width * 0.25,
                                      //   decoration: BoxDecoration(
                                      //     borderRadius:
                                      //         const BorderRadius.vertical(
                                      //       top: Radius.circular(10),
                                      //     ),
                                      //     // color: Colors.red,
                                      //     // image: DecorationImage(
                                      //     //   image: NetworkImage(
                                      //     //     e['image'],
                                      //     //   ),
                                      //     //   fit: BoxFit.cover,
                                      //     // ),
                                      //   ),
                                      // ),
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
                                ),
                              )
                            : Container(),
                      )
                      .toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: AllData.allCategories
                      .map(
                        (e) => (e['id'] % (2) == 0)
                            ? Container(
                                margin: const EdgeInsets.all(5),
                                height: s.height * 0.13,
                                width: s.width * 0.25,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    // Container(
                                    //   height: s.height * 0.1,
                                    //   width: s.width * 0.25,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius:
                                    //         const BorderRadius.vertical(
                                    //       top: Radius.circular(10),
                                    //     ),
                                    //     // color: Colors.red,
                                    //     // image: DecorationImage(
                                    //     //   image: NetworkImage(
                                    //     //     e['image'],
                                    //     //   ),
                                    //     //   fit: BoxFit.cover,
                                    //     // ),
                                    //   ),
                                    // ),
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
            SizedBox(
              height: s.height * 0.02,
            ),
            ...AllData.allCategories
                .map((e) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e['category'].toString().replaceFirst(
                                e['category'].toString()[0],
                                e['category'].toString()[0].toUpperCase()),
                            overflow: TextOverflow.ellipsis,
                            style: Styles.catStyle,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...AllData.allProduct
                                    .map(
                                      (i) => (e['category'] == i['category'])
                                          ? GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).pushNamed(
                                                    MyRoutes.DetailPage,
                                                    arguments: i);
                                              },
                                              child: Container(
                                                height: s.height * 0.25,
                                                width: s.width * 0.3,
                                                margin: const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: s.height * 0.13,
                                                      width: s.width * 0.3,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              15),
                                                        ),
                                                        image: DecorationImage(
                                                          image: NetworkImage(
                                                            i['thumbnail'],
                                                          ),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      i['title'],
                                                      style: Styles.textStyle,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "\$ ${i['price']}",
                                                          style:
                                                              const TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough,
                                                            decorationColor:
                                                                Colors.red,
                                                          ),
                                                        ),
                                                        Text(
                                                          "\$  ${(i['price'] - (i['price'] * (i['discountPercentage'] / 100)))}"
                                                              .split(".")[0],
                                                          style:
                                                              const TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        RatingBarIndicator(
                                                          rating: i['rating']
                                                              .toDouble(),
                                                          itemBuilder: (context,
                                                                  index) =>
                                                              const Icon(
                                                            Icons.star,
                                                            color: Colors.amber,
                                                          ),
                                                          itemCount: 5,
                                                          itemSize: 10.0,
                                                          direction:
                                                              Axis.horizontal,
                                                        ),
                                                        IconButton(
                                                          onPressed: () {
                                                            if (AllData
                                                                .cartProducts
                                                                .contains(i)) {
                                                              AllData
                                                                  .cartProducts
                                                                  .remove(i);
                                                            } else {
                                                              AllData
                                                                  .cartProducts
                                                                  .add(i);
                                                            }
                                                            setState(() {});
                                                          },
                                                          icon: Icon(
                                                            AllData.cartProducts
                                                                    .contains(i)
                                                                ? CupertinoIcons
                                                                    .cart_badge_minus
                                                                : CupertinoIcons
                                                                    .cart_badge_plus,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          : Container(),
                                    )
                                    .toList()
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
