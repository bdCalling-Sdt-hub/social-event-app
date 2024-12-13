import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/app_colors.dart';
import '../text/common_text.dart';

class CommonTextField extends StatelessWidget {
  CommonTextField(
      {super.key,
      this.hintText,
      this.labelText,
      this.prefixIcon,
      this.isPassword = false,
      this.controller,
      this.textInputAction = TextInputAction.next,
      this.keyboardType = TextInputType.text,
      this.mexLength,
      this.validator,
      this.prefixText,
      this.maxLines = 1,
      this.paddingHorizontal = 16,
      this.paddingVertical = 4,
      this.borderRadius = 10,
      this.inputFormatters,
      this.fillColor = AppColors.transparent,
      this.hintTextColor = AppColors.textFiledColor,
      this.labelTextColor = AppColors.textFiledColor,
      this.textColor = AppColors.black,
      this.borderColor = AppColors.transparent,
      this.onSubmitted,
      this.onTap,
      this.suffixIcon});

  final String? hintText;
  final String? labelText;
  final String? prefixText;

  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final Color? fillColor;
  final Color? labelTextColor;
  final Color? hintTextColor;
  final Color? textColor;
  final Color borderColor;

  final double paddingHorizontal;
  final double paddingVertical;
  final double borderRadius;
  final int? mexLength;
  final int maxLines;

  final bool isPassword;
  RxBool obscureText = false.obs;

  final Function(String)? onSubmitted;
  final VoidCallback? onTap;

  final TextEditingController? controller;
  final TextInputAction textInputAction;
  final FormFieldValidator? validator;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: keyboardType,
        validator: validator,
        controller: controller,
        obscureText: obscureText.value,
        textInputAction: textInputAction,
        maxLength: mexLength,
        maxLines: maxLines,
        cursorColor: AppColors.white,
        inputFormatters: inputFormatters,
        style: TextStyle(fontSize: 14, color: textColor),
        onFieldSubmitted: onSubmitted,
        onTap: onTap,
        decoration: InputDecoration(
          errorMaxLines: 2,
          filled: true,
          prefixIcon: prefixIcon,
          fillColor: fillColor,
          counterText: "",
          contentPadding: EdgeInsets.symmetric(
              horizontal: paddingHorizontal, vertical: paddingVertical),
          hintText: hintText,
          labelText: labelText,
          hintStyle: GoogleFonts.roboto(
            fontSize: 14,
            color: hintTextColor,
          ),
          labelStyle: GoogleFonts.roboto(fontSize: 14, color: labelTextColor),
          prefix: CommonText(
            text: prefixText ?? "",
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: isPassword
              ? GestureDetector(
                  onTap: toggle,
                  child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 10),
                      child: Obx(
                        () => Icon(
                          obscureText.value
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          size: 20,
                          color: textColor,
                        ),
                      )),
                )
              : suffixIcon,
        ),
      ),
    );
  }

  void toggle() {
    obscureText.value = !obscureText.value;
  }
}
