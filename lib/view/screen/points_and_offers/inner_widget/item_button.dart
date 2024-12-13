import 'package:flutter/material.dart';

import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/view/component/text/common_text.dart';

Widget itemButton({
   ontap,
  String title = "",
  String subTitle = "",
}) {
  return InkWell(
    onTap:ontap,
    child: Card(
      color: AppColors.white,
      elevation: 0.4,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: CommonText(
                fontSize: 18, fontWeight: FontWeight.w600, text: title),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            child: CommonText(
                fontSize: 16, fontWeight: FontWeight.w400, text: subTitle),
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
