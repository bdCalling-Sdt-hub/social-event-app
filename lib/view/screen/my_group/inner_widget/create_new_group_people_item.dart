import 'package:flutter/material.dart';

import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/view/component/text/common_text.dart';

import '../../../component/image/common_image.dart';

Widget createNewGroupPeopleItem({image, name}) {
  return Card(
    color: AppColors.white,
    elevation: 0.2,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          child: CommonImage(
              height: 48,
              width: 50,
              borderRadius: 50,
              fill: BoxFit.cover,
              imageType: ImageType.png,
              imageSrc: image),
        ),
        CommonText(fontSize: 13, fontWeight: FontWeight.w700, text: name),
        const Spacer(),
        const Icon(color: AppColors.primaryColor, Icons.clear),
        const SizedBox(
          width: 5,
        )
      ],
    ),
  );
}
