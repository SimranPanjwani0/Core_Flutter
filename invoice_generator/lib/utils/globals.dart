import 'dart:io';

import 'package:flutter/cupertino.dart';

class SelUser {
  String? ownername,
      companyname,
      ownernumber,
      owneremail,
      owneraddress,
      gstnumber = "2412345678901z7";

  File? image;
  int billNumber = 0;

  void sellerReset() {
    ownername =
        companyname = ownernumber = owneremail = owneraddress = image = null;
    billNumber = 0;
  }
}

class BuyerUser {
  String? buyername, billtype, buyeraddress, buyernumber, issuedate, duedate;

  void sellerReset() {
    buyername =
        buyeraddress = buyernumber = issuedate = duedate = billtype = null;
  }
}

class Globals {
  DateTime selDate = DateTime.now();
  Globals._();

  static final Globals globals = Globals._();

  SelUser user = SelUser();

  BuyerUser user1 = BuyerUser();

  List<BuyerUser> allUsers = [];
}
