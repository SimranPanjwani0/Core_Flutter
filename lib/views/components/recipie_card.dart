import 'package:appmania/headers.dart';

Widget recipieCard(
    {required Size s, required Map<String, dynamic> r, required bool isFav}) {
  return Container(
    height: s.height * 0.4,
    width: s.width * 0.4,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: Colors.primaries[r['id'] % 18],
        width: 3,
      ),
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(5, 5),
          blurRadius: 3,
          spreadRadius: 3,
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: s.height * 0.14,
          width: s.width * 0.45,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            image: DecorationImage(
              image: NetworkImage(
                r['image'],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                r['name'],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              RatingBarIndicator(
                rating: r['rating'].toDouble(),
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 18.0,
                direction: Axis.horizontal,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      r['reviewCount'].toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        isFav = !isFav;
                        (AllData.allFavorites.contains(r))
                            ? AllData.allFavorites.remove(r)
                            : AllData.allFavorites.add(r);
                      },
                      icon: (isFav == false)
                          ? const Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.grey,
                            )
                          : const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
