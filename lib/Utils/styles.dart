import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///////////////////////////////////////////////////////////////////////////////////////////
/// Colors
///
/// - Scafold Background Color
/// - AppBar Background Color
///
Color scafoldBackGroundColor = Colors.grey.shade50;
const Color appBarColor = Color.fromARGB(255, 255, 232, 20);
const Color primaryColor = Colors.white;
Color additionalItemsBoxColors = Colors.orange.shade50;

///////////////////////////////////////////////////////////////////////////////////////////
/// TextStyle
///
/// - White Large TextStyle
/// - White Medium TextStyle
/// - White Small TextStyle
/// - Black Large TextStyle
/// - Black Medium TextStyle
/// - Black Medium Bold TextStyle
/// - Black Small TextStyle
/// - Black Small Bold TextStyle
const TextStyle whiteLargeTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

const TextStyle whiteMediumTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);

const TextStyle blackMediumTextStyle = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

const TextStyle blackMediumBoldTextStyle = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

const TextStyle blackSmallTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

const TextStyle blackSmallBoldTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

///////////////////////////////////////////////////////////////////////////////////////////////
/// Custom Sized Box
///
/// Parameters
///
/// - Height
/// - Width
///
Widget sizedBox(height, width) {
  return SizedBox(
    height: height,
    width: width,
  );
}

/////////////////////////////////////////////////////////////////////////////////////////////
/// Divider
///
Divider divider = Divider(
  thickness: 1,
  color: Colors.grey.shade400,
);

/////////////////////////////////////////////////////////////////////////////////////////////
/// Box Shadow
///
/// - Left Box Shadow
/// - Right Box Shadow
///
final BoxShadow leftBoxShadow = BoxShadow(blurRadius: 0.3, spreadRadius: 2, color: Colors.grey.shade200, offset: const Offset(-2, 2));

final BoxShadow rightBoxShadow = BoxShadow(blurRadius: 0.3, spreadRadius: 2, color: Colors.grey.shade200, offset: const Offset(2, -2));
