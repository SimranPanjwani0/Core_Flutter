import 'package:appmania/headers.dart';

Widget searchbar({required Size s}) {
  return Padding(
    padding: const EdgeInsets.only(top: 140.0),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: s.height * 0.05,
          width: s.width * 0.7,
          child: TextFormField(
            obscureText: false,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade300,
              filled: true,
              hintText: "Search...",
              hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
              prefixIcon: const Icon(Icons.search),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(color: Colors.grey, width: 2.0),
              ),
            ),
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ]),
          child: const CircleAvatar(
            foregroundImage: NetworkImage(
                "https://avatars.mds.yandex.net/i?id=5b1c913da1841c7247d578882f9825c1537a3a78-12149948-images-thumbs&n=13"),
            radius: 25.0,
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    ),
  );
}
