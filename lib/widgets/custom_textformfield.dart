// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_sell_and_purchase/constants/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key, this.onChanged, this.labelText, this.hintText});

  final Function(String)? onChanged;
  final String? labelText;
  final String? hintText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        color: AppColors.whiteLitleGrey,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        controller: _controller,
        onChanged: (value) {
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
        },
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: widget.labelText,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(33)),
        ),
      ),
    );
  }
}
