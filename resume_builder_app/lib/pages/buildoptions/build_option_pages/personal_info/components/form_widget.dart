import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/globals.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(10),
      height: s.height * 0.6,
      width: s.width,
      decoration: BoxDecoration(
        color: Colors.teal.withOpacity(0.7),
        border: Border.all(
          color: const Color(0xff0f252c),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(
              height: s.height * 0.02,
            ),
            TextFormField(
              validator: (val) {
                if (val!.isEmpty) {
                  return "Please enter name";
                } else {
                  return null;
                }
              },
              initialValue: Globals.globals.name,
              onSaved: (val) {
                Globals.globals.name = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: "Enter Name",
                label: const Text("Name"),
                labelStyle: const TextStyle(
                  color: Color(
                    0xff0f252c,
                  ),
                  fontWeight: FontWeight.bold,
                ),
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
                  Icons.person_2_rounded,
                  color: Color(
                    0xff0f252c,
                  ),
                ),
                fillColor: Colors.white.withOpacity(0.5),
                filled: true,
              ),
            ),
            SizedBox(
              height: s.height * 0.02,
            ),
            TextFormField(
              validator: (val) => val!.isEmpty
                  ? "Please enter email"
                  : RegExp(r'''^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$''')
                          .hasMatch(val)
                      ? null
                      : "Invalid email",
              initialValue: Globals.globals.email,
              onSaved: (val) {
                Globals.globals.email = val!;
              },
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter Email",
                label: const Text("Email"),
                labelStyle: const TextStyle(
                  color: Color(
                    0xff0f252c,
                  ),
                  fontWeight: FontWeight.w400,
                ),
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
                  Icons.mail_rounded,
                  color: Color(
                    0xff0f252c,
                  ),
                ),
                fillColor: Colors.white.withOpacity(0.5),
                filled: true,
              ),
            ),
            SizedBox(
              height: s.height * 0.02,
            ),
            TextFormField(
              validator: (val) {
                return val!.isEmpty
                    ? "Please enter contact"
                    : val.length < 10
                        ? "Please enter valid number"
                        : null;
              },
              initialValue: Globals.globals.number,
              onSaved: (val) {
                Globals.globals.number = val!;
              },
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter Phone Number",
                label: const Text("Number"),
                labelStyle: const TextStyle(
                  color: Color(
                    0xff0f252c,
                  ),
                  fontWeight: FontWeight.w400,
                ),
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
                    width: 3,
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
                  Icons.phone_rounded,
                  color: Color(
                    0xff0f252c,
                  ),
                ),
                fillColor: Colors.white.withOpacity(0.5),
                filled: true,
              ),
            ),
            SizedBox(
              height: s.height * 0.02,
            ),
            TextFormField(
              initialValue: Globals.globals.address,
              onSaved: (val) {
                Globals.globals.address = val!;
              },
              onFieldSubmitted: (val) {
                formKey.currentState!.validate();
              },
              validator: (val) =>
                  val!.isEmpty ? "Please enter proper address" : null,
              maxLines: 2,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                hintText: "Enter Address",
                label: const Text("Address"),
                labelStyle: const TextStyle(
                  color: Color(
                    0xff0f252c,
                  ),
                  fontWeight: FontWeight.w400,
                ),
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
                  Icons.location_on_rounded,
                  color: Color(
                    0xff0f252c,
                  ),
                ),
                fillColor: Colors.white.withOpacity(0.5),
                filled: true,
              ),
            ),
            SizedBox(
              height: s.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    formKey.currentState!.reset();
                    Globals.globals.reset();
                    setState(() {});
                  },
                  splashColor: Colors.teal.withOpacity(0.7),
                  child: Container(
                    height: s.height * 0.07,
                    width: s.width * 0.25,
                    decoration: BoxDecoration(
                      color: const Color(0xff0f252c).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    bool valid = formKey.currentState!.validate();
                    if (valid) {
                      formKey.currentState!.save();
                    }
                    setState(() {});
                  },
                  splashColor: Colors.teal.withOpacity(0.7),
                  child: Container(
                    height: s.height * 0.07,
                    width: s.width * 0.25,
                    decoration: BoxDecoration(
                      color: const Color(0xff0f252c).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
