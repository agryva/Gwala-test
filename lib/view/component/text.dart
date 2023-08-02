import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final Key? key;

  final String text;
  final TextStyle? style;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final Color? color;

  CustomText(
    this.text, {
    this.key,
    this.color,
    this.style,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style ?? GoogleFonts.inter(
        color: color ?? Color(0xff2B324F),
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}
