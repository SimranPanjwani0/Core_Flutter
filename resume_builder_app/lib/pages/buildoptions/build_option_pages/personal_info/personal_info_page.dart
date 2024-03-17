import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/pages/buildoptions/components/form_widget.dart';
import 'package:resume_builder_app/utils/globals.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int selIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        body: Stack(children: [
          Container(
            height: s.height,
            width: s.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://avatars.mds.yandex.net/i?id=f5f21d98701192a2bdf9b0a84e14922f-5285355-images-thumbs&n=13",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: s.height * 0.05,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Color(
                      0xff0f252c,
                    ),
                  ),
                ),
                SizedBox(
                  height: s.height * 0.01,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          selIndex = 0;
                          setState(() {});
                        },
                        child: Container(
                          height: s.height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            border: Border(
                                bottom: BorderSide(
                              color: selIndex == 0
                                  ? const Color(0xff0f252c)
                                  : Colors.transparent,
                              width: 3,
                            )),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Contact",
                            style: TextStyle(
                              color: Color(0xff0f252c),
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          selIndex = 1;
                          setState(() {});
                        },
                        child: Container(
                          height: s.height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            border: Border(
                                bottom: BorderSide(
                              color: selIndex == 1
                                  ? const Color(0xff0f252c)
                                  : Colors.transparent,
                              width: 3,
                            )),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Photo",
                            style: TextStyle(
                              color: Color(0xff0f252c),
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          selIndex = 2;
                          setState(() {});
                        },
                        child: Container(
                          height: s.height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            border: Border(
                                bottom: BorderSide(
                              color: selIndex == 2
                                  ? const Color(0xff0f252c)
                                  : Colors.transparent,
                              width: 3,
                            )),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Signature",
                            style: TextStyle(
                              color: Color(0xff0f252c),
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: IndexedStack(
                    index: selIndex,
                    children: [
                      const FormWidget(),
                      Container(
                        height: s.height * 0.3,
                        width: s.width,
                        decoration: BoxDecoration(
                          color: const Color(0xff0f252c).withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 80,
                              backgroundColor: Colors.white,
                              foregroundImage: Globals.globals.image != null
                                  ? FileImage(Globals.globals.image!)
                                  : null,
                              child: const Icon(
                                Icons.person_rounded,
                                size: 100,
                                color: Color(0xff0f252c),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 110,
                              child: FloatingActionButton.small(
                                onPressed: () async {
                                  ImagePicker picker = ImagePicker();

                                  XFile? file = await picker.pickImage(
                                      source: ImageSource.camera);

                                  if (file != null) {
                                    Globals.globals.image = File(file.path);
                                    setState(() {});
                                  }
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  ),
                                  side: const BorderSide(
                                    color: Color(0xff0f252c),
                                  ),
                                ),
                                backgroundColor: const Color(0xff1ea592),
                                splashColor: const Color(0xff0f252c),
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xff0f252c),
                                  weight: 10,
                                ),
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
        ]),
      ),
    );
  }
}
