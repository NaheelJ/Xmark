import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mark/Data/products.dart';
import 'package:x_mark/Utils/styles.dart';
import 'package:x_mark/View/product_detail.dart';
import 'package:x_mark/Widgets/appBar.dart';
import 'package:x_mark/Widgets/container.dart';

class MyProducts extends StatelessWidget {
  const MyProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scafoldBackGroundColor,
      appBar: customAppBar('My Products', context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBox(height * 0.03, width),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              itemCount: myProducts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: height * 0.02),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetails(kname: myProducts[index]['name'], knarration: myProducts[index]['narration'], kprice: myProducts[index]['price']),
                          ));
                    },
                    child: CustomContainer(
                      height: height * 0.11,
                      width: width,
                      color: Colors.white,
                      padding: EdgeInsets.all(height * 0.02),
                      borderRadius: BorderRadius.circular(10),
                      boxshaw: [
                        leftBoxShadow,
                      ],
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${index + 1}. ${myProducts[index]['name']}',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              sizedBox(height * 0.005, 0.0),
                              Row(
                                children: [
                                  Text('Narration', style: blackMediumTextStyle),
                                  sizedBox(0.0, width * 0.01),
                                  Text('${myProducts[index]['narration']}', style: blackMediumBoldTextStyle),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  const Text('Price', style: blackMediumTextStyle),
                                  sizedBox(0.0, width * 0.02),
                                  Text('Rs.${myProducts[index]['price']}', style: blackMediumBoldTextStyle),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            sizedBox(height * 0.06, width)
          ],
        ),
      ),
    );
  }
}
