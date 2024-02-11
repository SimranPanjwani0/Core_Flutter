import 'package:appmania/headers.dart';
import 'package:appmania/utils/racipie_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: s.height * 0.2,
            width: s.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://avatars.mds.yandex.net/i?id=a8018bacf7751781c08bd67909cee3427bd4dd47-10851173-images-thumbs&n=13"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                searchbar(s: s),
                SizedBox(
                  height: s.height * 0.02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: AllData.allCategories
                        .map(
                          (e) => categoryCard(s: s, r: e),
                        )
                        .toList(),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      childAspectRatio: 30 / 40,
                    ),
                    itemCount: AllData.allRecipies.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {},
                      child: AllData.allRecipies
                          .map(
                            (e) => GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    MyRoutes.detailPage,
                                    arguments: e);
                              },
                              child: recipieCard(s: s, r: e, isFav: fav),
                            ),
                          )
                          .toList()[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.teal.shade50,
    );
  }
}
