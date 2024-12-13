import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/app_colors.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String titleText;
  final Color titleColor;
  final Color buttonColor;
  final Color? borderColor;
  final double borderWidth;
  final double titleSize;
  final FontWeight titleWeight;
  final double buttonRadius;
  final double buttonHeight;
  final double buttonWidth;

  final bool isLoading;

  const CommonButton(
      {this.onTap,
      required this.titleText,
      this.titleColor = AppColors.white,
      this.buttonColor = AppColors.primaryColor,
      this.titleSize = 16,
      this.buttonRadius = 30,
      this.titleWeight = FontWeight.w700,
      this.buttonHeight = 50,
      this.borderWidth = 1,
      this.isLoading = false,
      this.buttonWidth = double.infinity,
      this.borderColor = AppColors.primaryColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(buttonColor),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonRadius),
                side: BorderSide(
                    color: borderColor ?? AppColors.primaryColor,
                    width: borderWidth),
              ),
            ),
            elevation: WidgetStateProperty.all(0)),
        child: isLoading
            ? Platform.isIOS
                ? const CupertinoActivityIndicator()
                : const CircularProgressIndicator()
            : Text(
                titleText,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    color: titleColor,
                    fontSize: titleSize,
                    fontWeight: titleWeight),
              ),
      ),
    );
  }
}
