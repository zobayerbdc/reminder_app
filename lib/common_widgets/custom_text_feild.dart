// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import '../gen/colors.gen.dart';

class CustomTextFormField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
  final bool? obscureText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool isPrefixIcon;
  final double borderRadius;
  final VoidCallback? onSuffixIconTap;
  final String? iconpath;
  // final int maxline

  final int? maxline;
  final bool readOnly;
  final bool? isBorder;
  final Color fillColor;
  final String? prefixImage;
  final TextInputAction? textInputAction;
  final int? maxLength;

  const CustomTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
    this.borderRadius = 10.0, // Set to 10 pixels
    required this.isPrefixIcon,
    this.iconpath,
    this.onSuffixIconTap,
    this.readOnly = false,
    this.maxline,
    this.isBorder = false,
    this.fillColor = AppColors.cFF6E5782,
    this.prefixImage,
    this.textInputAction = TextInputAction.next,
    this.maxLength,
  });

  @override
  _CustomTextFormFieldState createState() =>
      _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(
      //   vertical: 5.h,
      //   horizontal: 5.w,
      // ),
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(
          12.r,
        ),
        color: AppColors.cFFFFF,
      ),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLength: widget.maxLength,
        showCursor: true,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        readOnly: widget.readOnly,
        maxLines: widget.maxline ?? 1,
        focusNode: _focusNode,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText??false,
        onChanged: widget.onChanged,
        validator: widget.validator,
        decoration: InputDecoration(
          // filled: true,
          border: InputBorder.none,
          // fillColor: widget.fillColor,
          labelText: widget.labelText,
          hintText: widget.hintText,
          // contentPadding: EdgeInsets.symmetric(
          //   vertical: 12.h,
          // ),
          // hintStyle: TextFontStyle.headline14w400C848484Stylejost,

          contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 5),
          hintStyle: widget.isPrefixIcon == false
              ? TextFontStyle.text14503559w400
                  .copyWith(color: AppColors.c4D4D4D)
              : TextFontStyle.text14503559w400,
          prefixIcon: widget.isPrefixIcon && widget.prefixImage != null
              ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  widget.prefixImage ?? "",
                  height: 10.h,
                  width: 10.w,
                ),
              )
              : null,
          suffixIcon: widget.suffixIcon != null
              ? GestureDetector(
                  onTap: widget.onSuffixIconTap,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.w),
                    child: Icon(
                      widget.suffixIcon,
                      color: _isFocused
                          ? AppColors.allPrimaryColor
                          : AppColors.c4D4D4D,
                    ),
                  ),
                )
              : null,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              widget.borderRadius,
            ),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
