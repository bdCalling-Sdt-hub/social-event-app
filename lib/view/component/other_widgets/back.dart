import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/utils/app_colors.dart';

Widget back() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () => Get.back(),
      child: Container(
          height: 32,
          width: 32,
          decoration:
              const BoxDecoration(color: AppColors.primaryColor, shape: BoxShape.circle),
          child: const Icon(Icons.arrow_back_outlined)),
    ),
  );
}
