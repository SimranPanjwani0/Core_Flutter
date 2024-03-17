import 'package:flutter/material.dart';
import 'package:invoice_generator/pages/detailpage/components/seller_components/seller_details.dart';
import 'package:invoice_generator/utils/globals.dart';

Widget buyerForm({required Size s}) {
  return Container(
    padding: const EdgeInsets.all(10),
    height: s.height * 0.8,
    width: s.width,
    decoration: BoxDecoration(
      color: const Color(0xff001328).withOpacity(0.7),
      border: Border.all(
        color: const Color(0xff0f252c),
        width: 3,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: const SellerDetails(),
  );
}
