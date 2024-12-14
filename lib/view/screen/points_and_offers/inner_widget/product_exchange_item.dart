import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

Widget productExchangeItem(){
  return InkWell(
    onTap: (){
      Get.toNamed(AppRoutes.product_exchange_dettails);
    },
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 120,
      width: double.infinity,
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

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1, color: Colors.black.withOpacity(0.2))
            ),
            child: CommonImage(
              height: 80,
                width: 80,
                imageType: ImageType.png,
                imageSrc: AppImages.exchange_product1),
          ),

          8.width,

          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonText(
                    fontSize: 18,
                    bottom: 8,
                    fontWeight: FontWeight.w700,
                    text: "Product Name"),
            
                const SizedBox(
                  width: 235,
                  child: CommonText(
                    textAlign: TextAlign.start,
                      maxLines: 3,
            
                      fontSize: 12,
                      bottom: 10,
                      fontWeight: FontWeight.w400,
                      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                ),
            
                Row(
                  children: [
                     CommonText(
                        fontSize:12,
                        fontWeight: FontWeight.w400,
                        text: "Redeem Points".tr),
                    const CommonText(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        text:"10000"),
            
            
            
            
            
            
            
            
            
            
                  ],
                )
              ],
            ),
          ),

          Container(
            height: 27,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.primaryColor
            ),

            child:  Center(
              child: CommonText(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                  text: "Add".tr),
            ),
          ),


        ],
      ),
    ),
  );
}