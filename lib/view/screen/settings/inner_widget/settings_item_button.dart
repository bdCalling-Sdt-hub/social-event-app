import 'package:flutter/material.dart';

import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/view/component/text/common_text.dart';

Widget settingsItemButton({
  ontap,
  String title = "",
  String subTitle = "",
}) {
  return InkWell(
    onTap:ontap,
    child: Container(
   margin: const EdgeInsets.only(bottom: 4),
      
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 1),
            spreadRadius: 0,
          )
        ]
      ),

      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
            child: CommonText(
                fontSize: 22, fontWeight: FontWeight.w600, text: title),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            child: CommonText(
              color: AppColors.textFiledColor,
                fontSize: 17, fontWeight: FontWeight.w400, text: subTitle),
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 22,
          ),
          15.width,
        ],
      ),
    ),
  );
}
