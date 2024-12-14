import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/text/common_text.dart';

import '../../component/other_widgets/item.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title:  CommonText(
            fontSize: 24,
            color: AppColors.white,
            fontWeight: FontWeight.w700,
            text: AppString.settings),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            10.height,
            Item(
                onTap: () => Get.toNamed(AppRoutes.account_security),
                title: AppString.accountSecurity),
            Container(
              height: 8,
              margin: const EdgeInsets.only(top: 0, bottom: 10),
              width: double.infinity,
              color: const Color(0xffEEEEEE),
            ),
            Item(
              title: AppString.parentalControlMode,
              onTap: () => Get.toNamed(AppRoutes.parentalMode),
            ),
            Item(
              title: AppString.easyMode,
              onTap: () => Get.toNamed(AppRoutes.easyMode),
            ),
            Container(
              height: 8,
              margin: const EdgeInsets.only(top: 0, bottom: 10),
              width: double.infinity,
              color: const Color(0xffEEEEEE),
            ),
            Item(
              title: AppString.messageNotifications,
              onTap: () => Get.toNamed(AppRoutes.messageNotification),
            ),
            Item(
              title: AppString.chats,
              onTap: () => Get.toNamed(AppRoutes.chatSetting),
            ),
            Item(
              title: AppString.general,
              onTap: () => Get.toNamed(AppRoutes.general),
            ),
            Container(
              height: 8,
              margin: const EdgeInsets.only(top: 0, bottom: 10),
              width: double.infinity,
              color: const Color(0xffEEEEEE),
            ),
            Item(
              title: AppString.friendsPermissions,
              onTap: () => Get.toNamed(AppRoutes.friendPermission),
            ),
            Item(
              title: AppString.myInformationAuthorizations,
              onTap: () => Get.toNamed(AppRoutes.myInformation),
            ),
            Item(
              title: AppString.collectedPersonalInformation,
              onTap: () => Get.toNamed(AppRoutes.collectedPersonalInfomation),
            ),
            Item(
              title: AppString.termsConditions,
              onTap: () => Get.toNamed(AppRoutes.termsOfServices),
            ),
            Item(
              title: AppString.privacyPolicy,
              onTap: () => Get.toNamed(AppRoutes.privacyPolicy),
            ),
          ],
        ),
      ),
    );
  }
}
