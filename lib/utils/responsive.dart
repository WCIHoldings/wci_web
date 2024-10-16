import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1000;

  static getContainerPadding(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return const EdgeInsets.symmetric(horizontal: 90, vertical: 30);
    } else {
      return const EdgeInsets.all(20);
    }
  }

  static getTextStyle(BuildContext context,
      {double mSize = 18,
      double dSize = 21,
      FontWeight? weight,
      TextDecoration? decoration,
      TextDecorationStyle? decorationStyle,
      Color? decorationColor,
      FontWeight dWeight = FontWeight.w500,
      FontWeight mWeight = FontWeight.w500,
      Color textColor = Colors.white}) {
    if (Responsive.isMobile(context)) {
      return GoogleFonts.poppins(
          fontSize: mSize,
          fontWeight: weight ?? mWeight,
          color: textColor,
          decoration: decoration,
          decorationColor: decorationColor);
    } else {
      return GoogleFonts.poppins(
          fontSize: dSize,
          fontWeight: weight ?? dWeight,
          color: textColor,
          decoration: decoration,
          decorationColor: decorationColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1100) {
      return desktop;
    } else if (size.width >= 850 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
