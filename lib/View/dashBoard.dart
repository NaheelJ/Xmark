import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mark/Data/products.dart';
import 'package:x_mark/Utils/styles.dart';
import 'package:x_mark/View/my_products.dart';
import 'package:x_mark/Widgets/appBar.dart';
import 'package:x_mark/Widgets/button.dart';
import 'package:x_mark/Widgets/container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scafoldBackGroundColor,
      appBar: customAppBar('Estimation', context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBox(height * 0.03, width),
              const Text(
                'Select Your Products for calculate The Rate',
                style: blackSmallTextStyle,
              ),
              sizedBox(height * 0.015, width),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButtonBorder(
                    text: 'Add Product',
                    onpressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyProducts()));
                    },
                    width: width * 0.45,
                  ),
                  BlueElevatedButton(
                    text: 'Manual Adding',
                    onpressed: () {},
                    width: width * 0.45,
                  ),
                ],
              ),
              sizedBox(height * 0.02, width),
              divider,
              sizedBox(height * 0.01, width),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Clear all',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.lightBlueAccent.shade400,
                    ),
                  ),
                ),
              ),
              sizedBox(height * 0.02, width),
              ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CustomContainer(
                  width: width,
                  color: Colors.white,
                  margin: EdgeInsets.only(bottom: height * 0.02, left: width * 0.01, right: width * 0.01),
                  borderRadius: BorderRadius.circular(15),
                  boxshaw: [
                    leftBoxShadow,
                  ],
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.lightBlueAccent.shade200,
                            child: Icon(
                              Icons.edit,
                              size: 19,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      ///////////////////////////////////////////////////////////////////////
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Row(
                          children: [
                            Text('${index + 1}.', style: blackMediumTextStyle),
                            sizedBox(0.0, 5.0),
                            Text('D1', style: blackMediumBoldTextStyle),
                            Spacer(),
                            Text('Qty', style: blackMediumTextStyle),
                            sizedBox(0.0, width * 0.03),
                            Text('${2}', style: blackMediumBoldTextStyle),
                            sizedBox(0.0, width * 0.01)
                          ],
                        ),
                      ),
                      sizedBox(height * 0.01, 0.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Row(
                          children: [
                            ////////////////////////////////////////////////////////////////////////////
                            Text('Narration', style: blackMediumTextStyle),
                            Spacer(),
                            Text('60 x 120', style: blackMediumTextStyle),
                            sizedBox(0.0, width * 0.01)
                          ],
                        ),
                      ),
                      sizedBox(height * 0.01, 0.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Row(
                          children: [
                            ////////////////////////////////////////////////////////////////////////////////
                            Text('Price', style: blackMediumTextStyle),
                            Spacer(),
                            Text('${1000}.00', style: blackMediumTextStyle),
                            sizedBox(0.0, width * 0.01)
                          ],
                        ),
                      ),
                      sizedBox(height * 0.015, 0.0),
                      ///////////////////////////////////////////////////////////////////////////////////////
                      // myProducts[index]['additional'].isEmpty
                      //     ? SizedBox()
                      //     :
                      // Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      //   child: CustomContainer(
                      //     width: width,
                      //     padding: const EdgeInsets.all(10),
                      //     color: Colors.orange.shade50,
                      //     borderRadius: BorderRadius.circular(8),
                      //     child: Column(
                      //       children: List.generate(
                      //         myProducts[0]['additional'].length,
                      //         (index) => Row(
                      //           children: [
                      //             ///////////////////////////////////////////////////////////////////////////////
                      //             SizedBox(
                      //               width: width * 0.4,
                      //               child: Text(
                      //                 '${myProducts[0]['additional'][index]['name']}',
                      //                 style: blackMediumTextStyle,
                      //               ),
                      //             ),
                      //             Text('${2}', style: blackMediumTextStyle),
                      //             Spacer(),
                      //             Text('1000.00', style: blackMediumTextStyle),
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // sizedBox(height * 0.01, 0.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: divider,
                      ),
                      sizedBox(height * 0.01, width),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //////////////////////////////////////////////////////////////////////////////////////
                            Text('Total Price', style: blackMediumTextStyle),
                            Text('${17000}.00', style: blackMediumBoldTextStyle),
                          ],
                        ),
                      ),
                      sizedBox(height * 0.02, width),
                    ],
                  ),
                ),
              ),
              sizedBox(height * 0.01, width),
              CustomContainer(
                width: width,
                color: primaryColor,
                margin: EdgeInsets.symmetric(horizontal: width * 0.01),
                borderRadius: BorderRadius.circular(15),
                boxshaw: [
                  leftBoxShadow,
                ],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.lightBlueAccent.shade200,
                          child: Icon(
                            Icons.edit,
                            size: 19,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: Text(
                        'Total Product Details',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: divider,
                    ),
                    sizedBox(height * 0.01, width),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: Row(
                        children: [
                          Text('Gross', style: blackMediumTextStyle),
                          Spacer(),
                          Text('15,900.00', style: blackMediumBoldTextStyle),
                        ],
                      ),
                    ),
                    sizedBox(height * 0.01, width),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: Row(
                        children: [
                          Text('Toatl Discount', style: blackMediumTextStyle),
                          Spacer(),
                          Text('00.00', style: blackMediumBoldTextStyle),
                        ],
                      ),
                    ),
                    sizedBox(height * 0.01, width),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: divider,
                    ),
                    sizedBox(height * 0.01, width),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: Row(
                        children: [
                          Text('Grand Toatal Amount', style: blackMediumBoldTextStyle),
                          Spacer(),
                          Text('15,900.00', style: blackMediumBoldTextStyle),
                        ],
                      ),
                    ),
                    sizedBox(height * 0.025, width),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: BlueElevatedButton(
                        text: 'Generate Invoice',
                        onpressed: () {},
                        width: width,
                      ),
                    ),
                    sizedBox(height * 0.03, width)
                  ],
                ),
              ),
              sizedBox(height * 0.06, width)
            ],
          ),
        ),
      ),
    );
  }
}
