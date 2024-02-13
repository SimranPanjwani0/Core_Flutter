import 'package:exam_1/headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selIndex;
  String? selType;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DesignView",
          style: MyStyles.titleStyle,
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
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selType = null;
                      });
                    },
                    child: Container(
                      height: s.height * 0.07,
                      decoration: BoxDecoration(
                        color: selIndex == null ? Colors.white : Colors.black,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "All",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: selIndex == null ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                ...AllData.allType
                    .map(
                      (e) => Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selIndex = AllData.allType.indexOf(e);
                              selType = e;
                            });
                          },
                          child: Container(
                            height: s.height * 0.07,
                            decoration: BoxDecoration(
                              color: selIndex == null
                                  ? Colors.black
                                  : Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              e,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: selIndex == null
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
            SizedBox(
              height: s.height * 0.02,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  childAspectRatio: 30 / 40,
                ),
                itemCount: AllData.allWallpapers.length,
                itemBuilder: (context, index) => (selType == null)
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(MyRoutes.detailpage,
                              arguments: AllData.allWallpapers[index]);
                        },
                        child: Container(
                          height: s.height * 0.2,
                          width: s.width * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                AllData.allWallpapers[index]['previewURL'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    : (selType == AllData.allWallpapers[index]['type'])
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(MyRoutes.detailpage);
                            },
                            child: Container(
                              height: s.height * 0.2,
                              width: s.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    AllData.allWallpapers[index]['previewURL'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
