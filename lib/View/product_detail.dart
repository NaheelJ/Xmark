import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mark/Utils/styles.dart';
import 'package:x_mark/Widgets/appBar.dart';
import 'package:x_mark/Widgets/container.dart';

class ProductDetails extends StatefulWidget {
  String kname;
  String knarration;
  int kprice;
  ProductDetails({
    super.key,
    required this.kname,
    required this.knarration,
    required this.kprice,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    print(widget.kname);
    print(widget.knarration);
    print(widget.kprice);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scafoldBackGroundColor,
      appBar: customAppBar('Product Details', context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBox(height * 0.04, width),
            CustomContainer(
              height: height * 0.3,
              width: width,
              color: Colors.white,
              padding: EdgeInsets.all(height * 0.03),
              borderRadius: BorderRadius.circular(15),
              boxshaw: [
                leftBoxShadow,
              ],
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(widget.kname, style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w500)),
                      Text(widget.knarration, style: blackMediumBoldTextStyle),
                      Text('${widget.kprice}', style: blackMediumBoldTextStyle),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
