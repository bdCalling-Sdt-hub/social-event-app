import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/text/common_text.dart';

import '../../../component/other_widgets/item.dart';

class AccountSecurityScreen extends StatelessWidget {
  const AccountSecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.accountSecurity),
      ),
      body: Column(
        children: [
          10.height,
          Item(
              onTap: () => Get.toNamed(AppRoutes.display_name),
              title: AppString.displayName,
              subTitle: "Liu Jiameng"),
          Item(
              onTap: () => Get.toNamed(AppRoutes.id_screen),
              title: AppString.id,
              subTitle: "ID_412124412"),
          Item(
              onTap: () => Get.toNamed(AppRoutes.phone_number),
              title: AppString.phoneNumber,
              subTitle: "+86 234 5678900"),
          Container(
            height: 8,
            margin: const EdgeInsets.only(top: 0, bottom: 10),
            width: double.infinity,
            color: const Color(0xffEEEEEE),
          ),
          Item(
              onTap: () => Get.toNamed(AppRoutes.passwordScreen),
              title: AppString.password),
          Item(
              onTap: () => Get.toNamed(AppRoutes.voice_print),
              title: AppString.voicePrint),
          Container(
            height: 8,
            margin: const EdgeInsets.only(top: 0, bottom: 10),
            width: double.infinity,
            color: const Color(0xffEEEEEE),
          ),
          Item(
              onTap: () => Get.toNamed(AppRoutes.emergency_contact),
              title: AppString.emergencyContacts),
          Item(
            title: AppString.loginDevices,
            onTap: () => Get.toNamed(AppRoutes.loginDevices),
          ),
        ],
      ),
    );
  }
}
