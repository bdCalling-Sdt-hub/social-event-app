import 'package:flutter/material.dart';


import '../../../../utils/app_colors.dart';
import '../../../component/text/common_text.dart';

Widget selectedButton({ontap, borderColor, backgroundColor, title, titleColor}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: 42,
      width: 128,
      decoration: BoxDecoration(
          color: backgroundColor??AppColors.primaryColor,
          border: Border.all(
            color:borderColor?? AppColors.transparent,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: CommonText(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color:titleColor?? AppColors.white,
              text: title??"Contribute")),
    ),
  );
}
