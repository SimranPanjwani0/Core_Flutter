import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:resume_builder_app/utils/globals.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var val;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     "Education",
        //   ),
        // ),
        body: Stack(
          children: [
            Container(
              height: s.height,
              width: s.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://blog.mindmarker.com/hs-fs/hubfs/Part1-Design.jpg?width=8798&name=Part1-Design.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: s.height * 0.03,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: s.height * 0.03,
                    ),
                    Container(
                      height: s.height * 0.7,
                      width: s.width,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Course / Degree",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: s.height * 0.01,
                          ),
                          TextFormField(
                            initialValue: Globals.globals.degree,
                            onSaved: (val) {
                              Globals.globals.degree = val!;
                            },
                            onFieldSubmitted: (val) {
                              formKey.currentState!.validate();
                            },
                            validator: (val) => val!.isEmpty
                                ? "This field is must be filled"
                                : null,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "B.C.A.",
                              hintStyle: const TextStyle(
                                color: Color(
                                  0xff0f252c,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(
                                    0xff0f252c,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(
                                    0xff0f252c,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(
                                    0xff0f252c,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(
                                Icons.school_rounded,
                                color: Color(
                                  0xff0f252c,
                                ),
                              ),
                              fillColor: Colors.white.withOpacity(0.7),
                              filled: true,
                            ),
                          ),
                          SizedBox(
                            height: s.height * 0.02,
                          ),
                          const Text(
                            "School / College / Institute",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: s.height * 0.01,
                          ),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            iconDisabledColor: Colors.white,
                            iconEnabledColor: Colors.white,
                            focusColor: Colors.white.withOpacity(0.5),
                            dropdownColor: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            value: val,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            hint: const Text(
                              "  Select",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            items: Globals.globals.allUniversities
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                            onChanged: (newValue) {
                              setState(
                                () {
                                  val = newValue;
                                  Globals.globals.college = val;
                                  setState(() {});
                                },
                              );
                            },
                          ),
                          SizedBox(
                            height: s.height * 0.02,
                          ),
                          const Text(
                            "Percentage",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: s.height * 0.01,
                          ),
                          TextFormField(
                            initialValue: Globals.globals.per,
                            onSaved: (val) {
                              Globals.globals.per = val!;
                            },
                            onFieldSubmitted: (val) {
                              formKey.currentState!.validate();
                            },
                            validator: (val) => val!.isEmpty
                                ? "This field is must be filled"
                                : null,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "Enter your course / degree",
                              hintStyle: const TextStyle(
                                color: Color(
                                  0xff0f252c,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(
                                    0xff0f252c,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(
                                    0xff0f252c,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(
                                    0xff0f252c,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(
                                Icons.school_rounded,
                                color: Color(
                                  0xff0f252c,
                                ),
                              ),
                              fillColor: Colors.white.withOpacity(0.7),
                              filled: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
