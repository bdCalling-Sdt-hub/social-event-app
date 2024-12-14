import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';


import '../../../../utils/app_colors.dart';
import '../../../component/text/common_text.dart';

Widget selectedButton({ontap, borderColor, backgroundColor, title, titleColor}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: 35,
      width: 100,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),

      decoration: BoxDecoration(
          color: backgroundColor??AppColors.primaryColor,
          border: Border.all(
            color:borderColor?? AppColors.transparent,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: CommonText(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color:titleColor?? AppColors.white,
              text: title??"Contribute")),
    ),
  );
}
