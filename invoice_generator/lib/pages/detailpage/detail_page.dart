import 'package:flutter/material.dart';
import 'package:invoice_generator/pages/detailpage/components/buyer_components/buyer_widget.dart';
import 'package:invoice_generator/pages/detailpage/components/seller_components/sales_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
              color: Color(
                0xffc2e3fd,
              ),
            ),
          ),
          SingleChildScrollView(
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
                    Icons.arrow_back_ios_new_outlined,
                    color: Color(
                      0xff0f252c,
                    ),
                  ),
                ),
                SizedBox(
                  height: s.height * 0.07,
                  width: s.width,
                  child: Stack(
                    children: [
                      Container(
                        height: s.height * 0.07,
                        width: s.width,
                        color: const Color(
                          0xffc2e3fd,
                        ),
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
                                  color: selIndex == 0
                                      ? const Color(
                                          0xff0f252c,
                                        ).withOpacity(0.5)
                                      : const Color(
                                          0xffc2e3fd,
                                        ).withOpacity(0.5),
                                  borderRadius: selIndex == 0
                                      ? BorderRadius.circular(20)
                                      : null,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: selIndex == 0
                                          ? const Color(0xff0f252c)
                                          : Colors.transparent,
                                      width: 3,
                                    ),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Seller",
                                  style: TextStyle(
                                    color: selIndex == 0
                                        ? const Color(
                                            0xffc2e3fd,
                                          )
                                        : const Color(
                                            0xff0f252c,
                                          ),
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
                                  color: selIndex == 1
                                      ? const Color(
                                          0xff0f252c,
                                        ).withOpacity(0.5)
                                      : const Color(
                                          0xffc2e3fd,
                                        ).withOpacity(0.5),
                                  borderRadius: selIndex == 1
                                      ? BorderRadius.circular(20)
                                      : null,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: selIndex == 1
                                          ? const Color(0xff0f252c)
                                          : Colors.transparent,
                                      width: 3,
                                    ),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Buyer",
                                  style: TextStyle(
                                    color: selIndex == 1
                                        ? const Color(
                                            0xffc2e3fd,
                                          )
                                        : const Color(
                                            0xff0f252c,
                                          ),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: IndexedStack(
                    index: selIndex,
                    children: [
                      sellerForm(s: s),
                      buyerForm(s: s),
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
