import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../../helpers/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';



Widget searchArticle() {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2), // Shadow color
          blurRadius: 2, // Shadow blur
          offset: const Offset(2, 6), // Shadow offset
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffEEEEEE),
                  prefixIcon: const Icon(Icons.search_sharp),
                  hintText: AppString.searchLocation,
                  hintStyle: const TextStyle(color: Color(0xff909090)),
                  suffixIcon: Container(
                    width: 70,
                    margin: const EdgeInsets.only(top: 8, bottom: 8, right: 10),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child:  CommonText(
                          text: AppString.search,
                          color: AppColors.white,
                        ).center),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          12.width,
          InkWell(
            onTap: () => Get.toNamed(AppRoutes.profile),
            child: Container(
              padding: const EdgeInsets.all(6),
              margin: const EdgeInsets.only(right: 16),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.primaryColor),
              child: const Icon(
                Icons.settings,
                color: AppColors.white,
              ),
            ),
          )
        ],
      ),
    ),
  ) ;
}