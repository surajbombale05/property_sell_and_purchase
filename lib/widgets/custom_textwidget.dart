import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatefulWidget {
  const TextWidget(
      {super.key,
      this.textAlign,
      this.text,
      this.fontSize,
      this.fontWeight,
      this.textDecoration,
      this.color,
      this.letterSpacing,
      this.textOverflow});

  final TextAlign? textAlign;
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final Color? color;
  final double? letterSpacing;
  final TextOverflow? textOverflow;

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: widget.textAlign,
      widget.text ?? "",
      overflow: widget.textOverflow,
      style: GoogleFonts.baloo2(
          decoration: widget.textDecoration,
          fontSize: widget.fontSize ?? 12.sp,
          fontWeight: widget.fontWeight,
          color: widget.color,
          letterSpacing: widget.letterSpacing),
    );
  }
}
