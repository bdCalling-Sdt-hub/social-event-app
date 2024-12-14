import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

Widget myGroupItem() {
  return Card(
    color: AppColors.white,
    elevation: 0.2,

    child: Row(
      children: [
        Padding(
          padding:  const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          child: CommonImage(

              height: 48,
              width: 48,
              borderRadius: 50,
              fill: BoxFit.cover,
              imageType: ImageType.png,
              imageSrc: AppImages.groupLogo),
        ),

         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const CommonText(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                text: "Group Name"),

            CommonText(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                text: "100 ${"members".tr}"),

          ],
        )
      ],
    ),
  );
}
