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
              height: 100,
                width: 100,
                imageType: ImageType.png,
                imageSrc: AppImages.exchange_product1),
          ),

          15.width,

          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                  fontSize: 24,
                  bottom: 8,
                  fontWeight: FontWeight.w700,
                  text: "Product Name"),

              SizedBox(
                width: 235,
                child: CommonText(
                  textAlign: TextAlign.start,
                    maxLines: 3,

                    fontSize: 15,
                    bottom: 10,
                    fontWeight: FontWeight.w400,
                    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
              ),

              Row(
                children: [
                  CommonText(
                      fontSize:16,
                      fontWeight: FontWeight.w400,
                      text: AppString.redemPoints),
                  CommonText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      text:"10000"),
                ],
              )
            ],
          ),


          Align(alignment: Alignment.bottomRight,
            child: Container(
              height: 35,
              width: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.primaryColor
              ),

              child: const Center(
                child: CommonText(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                    text: AppString.add),
              ),
            ),
          ),





        ],
      ),
    ),
  );
}