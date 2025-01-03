import 'package:clean_arch_bookly_app/constants.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  //scale factor
  //Responsive font size
  //fontsize(min,max)

  static double getResponsiveFontSize(BuildContext context,
      {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);

    double responsiveFontSize = fontSize * scaleFactor;

    double lowerLimit = responsiveFontSize * .8;

    double upperLimit = responsiveFontSize * 1.2;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width < 600) {
      return width / 400;
    } else if (width < 900 && width >= 600) {
      return width / 700;
    } else if (width >= 900) {
      return width / 1000;
    }
  }

  static TextStyle textStyle18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 18,
      ),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textStyle20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 20,
      ),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle30(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 30,
      ),
      fontWeight: FontWeight.w900,
      fontFamily: kGtSectraFine,
      letterSpacing: 1.2,
    );
  }

  static TextStyle textStyle14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 14,
      ),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 16,
      ),
      fontWeight: FontWeight.w500,
    );
  }
}
