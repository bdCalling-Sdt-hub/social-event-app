import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';

import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/rating_bar/rating_bar.dart';
import 'package:social_event/view/component/text/common_text.dart';

Widget contributeReviewItem(){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    height: 120,
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.normalTeal,
      borderRadius: BorderRadius.circular(12)
    ),
    
    child: Row(
      children: [
        CommonImage(
          width: 100,
            height: 100,
            imageType: ImageType.png,
            imageSrc: AppImages.event1),
        
        15.width,
        
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             CommonText(
                fontSize: 16,
                bottom: 10,
                fontWeight: FontWeight.w700,
                text: "Group Discussions".tr),

             CommonText(
                fontSize: 12,
                bottom: 10,
                color: AppColors.textFiledColor,
                fontWeight: FontWeight.w400,
                text: "You visited 3 days ago".tr),

            Row(

              children: [
              ratingBar(itemSize: 13, ignoreGesture: true),
                
                const CommonText(

                  left: 3,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                    text: '5.0')
              ],
            ),
            
            




          ],
        ),
      Spacer(),


      popupMenu()
        


      ],
    ),
  );
}


Widget popupMenu(){
  return PopupMenuButton(
    onSelected: (value){

    },
      itemBuilder: (context)=>[
         PopupMenuItem(
            value: 1,
            child: Row(
              children: [
                Icon(
                  color: AppColors.redClr,
                    Icons.delete),
                
                CommonText(
                    left: 5,
                    text: "Delete".tr)
              ],
            )),


         PopupMenuItem(
            value: 2,
            child: Row(
              children: [
                Icon(
                  color: AppColors.textFiledColor,
                    Icons.edit),

                CommonText(
                    left: 5,
                    text: "Edit".tr)
              ],
            )),
      ]);
}