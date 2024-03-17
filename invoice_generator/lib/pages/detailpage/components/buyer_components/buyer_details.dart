import 'dart:io';

import 'package:flutter/material.dart';
import 'package:invoice_generator/utils/globals.dart';
import 'package:image_picker/image_picker.dart';

class SellerDetails extends StatefulWidget {
  const SellerDetails({super.key});

  @override
  State<SellerDetails> createState() => _SellerDetailsState();
}

class _SellerDetailsState extends State<SellerDetails> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: Globals.globals.selDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != Globals.globals.selDate) {
      setState(() {
        Globals.globals.selDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);

    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: s.height * 0.02,
          ),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () => _selectDate(context),
                icon: const Icon(Icons.calendar_month_rounded),
                label: const Text('Issued Date'),
              ),
              SizedBox(
                height: s.height * 0.01,
              ),
              ElevatedButton.icon(
                onPressed: () => _selectDate(context),
                icon: const Icon(Icons.calendar_month_rounded),
                label: const Text('Due Date'),
              ),
            ],
          ),
          TextFormField(
            validator: (val) {
              if (val!.isEmpty) {
                return "Please enter name";
              } else {
                return null;
              }
            },
            initialValue: Globals.globals.user.ownername,
            onSaved: (val) {
              Globals.globals.user.ownername = val!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Owner Name",
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
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          SizedBox(
            height: s.height * 0.01,
          ),
          TextFormField(
            validator: (val) {
              if (val!.isEmpty) {
                return "Please enter name";
              } else {
                return null;
              }
            },
            initialValue: Globals.globals.user.companyname,
            onSaved: (val) {
              Globals.globals.user.companyname = val!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Company Name",
              label: const Text("Company Name"),
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
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          SizedBox(
            height: s.height * 0.01,
          ),
          TextFormField(
            validator: (val) => val!.isEmpty
                ? "Please enter email"
                : RegExp(r'''^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$''')
                        .hasMatch(val)
                    ? null
                    : "Invalid email",
            initialValue: Globals.globals.user.owneremail,
            onSaved: (val) {
              Globals.globals.user.owneremail = val!;
            },
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Owner Email",
              label: const Text("Email"),
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
                Icons.mail_rounded,
                color: Color(
                  0xff0f252c,
                ),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          SizedBox(
            height: s.height * 0.01,
          ),
          TextFormField(
            validator: (val) {
              return val!.isEmpty
                  ? "Please enter contact"
                  : val.length < 10
                      ? "Please enter valid number"
                      : null;
            },
            initialValue: Globals.globals.user.ownernumber,
            onSaved: (val) {
              Globals.globals.user.ownernumber = val!;
            },
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: "Owner's Phone Number",
              label: const Text("Number"),
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
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          SizedBox(
            height: s.height * 0.01,
          ),
          TextFormField(
            initialValue: Globals.globals.user.owneraddress,
            onSaved: (val) {
              Globals.globals.user.owneraddress = val!;
            },
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            validator: (val) =>
                val!.isEmpty ? "Please enter proper address" : null,
            maxLines: 2,
            textInputAction: TextInputAction.newline,
            decoration: InputDecoration(
              hintText: "From Address",
              label: const Text("Address"),
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
                Icons.location_on_rounded,
                color: Color(
                  0xff0f252c,
                ),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          SizedBox(
            height: s.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  formKey.currentState!.reset();
                  Globals.globals.user.sellerReset();
                  setState(() {});
                },
                splashColor: Colors.teal.withOpacity(0.7),
                child: Container(
                  height: s.height * 0.07,
                  width: s.width * 0.25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(
                        0xffc2e3fd,
                      ),
                      width: 3,
                    ),
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
    );
  }
}
