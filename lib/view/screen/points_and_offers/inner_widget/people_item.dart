import 'package:flutter/cupertino.dart';

import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

Widget peopleItem(){
  return Padding(
    padding:  const EdgeInsets.symmetric(horizontal: 7),
    child: Column(
      children: [
        CommonImage(
          height: 65,
            width: 65,
            borderRadius: 25,
            imageType: ImageType.png,
            imageSrc: AppImages.image1),
        
        const CommonText(
          top: 5,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            text: "Du Jianhan")

      ],
    ),
  );
}