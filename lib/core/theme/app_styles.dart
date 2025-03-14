import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static const String fontFamily = 'M';

  static TextStyle bodyLargeStyle = GoogleFonts.montserrat(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bodyNormalBoldStyle = GoogleFonts.montserrat(
    color: Colors.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bodyNormalStyle = GoogleFonts.montserrat(
    color: Colors.white,
    fontSize: 14.sp,
  );
}
