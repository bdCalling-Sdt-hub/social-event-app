import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/app_routes.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';

Widget searchLocation() {
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
      padding: const EdgeInsets.symmetric(vertical:  8.0,horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffEEEEEE),
            prefixIcon: const Icon(Icons.search_sharp,color: Color(0xff909090)),
            hintText: "Search location".tr,
            hintStyle: const TextStyle(color: Color(0xff909090),fontWeight: FontWeight.normal),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: InkWell(
                onTap: () => Get.toNamed(AppRoutes.filters),
                child: const CircleAvatar(
                    radius: 16,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.filter_alt_outlined,
                      color: AppColors.white,
                    )),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16))),
      ),
    ),
  ) ;
}