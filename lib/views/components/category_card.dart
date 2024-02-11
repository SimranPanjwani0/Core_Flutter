import 'package:appmania/headers.dart';

Widget categoryCard({required Size s, required String r}) {
  return GestureDetector(
    child: Container(
      margin: const EdgeInsets.all(5),
      height: s.height * 0.07,
      width: s.width * 0.1 + r.length * 10,
      decoration: BoxDecoration(
        color: Colors.primaries[r.hashCode % 18],
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Text(
        r,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    ),
  );
}
