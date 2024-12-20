import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

AppBar homeAppbar() => AppBar(
      toolbarHeight: 90,
      automaticallyImplyLeading: false,
      title: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffEEEEEE),
            prefixIcon: const Icon(Icons.search_sharp),
            hintText: AppString.searchEvent,
            suffixIcon: Container(
              width: 70,
              margin: const EdgeInsets.only(top: 8, bottom: 8, right: 10),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: const CommonText(
                    text: AppString.search,
                    color: AppColors.white,
                  ).center),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.transparent)),
             disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.transparent)),
             enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.transparent)),


            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.transparent))),
      ),
      actions: [
        InkWell(
          onTap: () => Get.toNamed(AppRoutes.profile),
          child: Container(
            padding: const EdgeInsets.all(6),
            margin: const EdgeInsets.only(right: 20),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.primaryColor),
            child: const Icon(
              Icons.settings,
              color: AppColors.white,
            ),
          ),
        )
      ],
    );
