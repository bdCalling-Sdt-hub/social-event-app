import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/controllers/message/chat_info_controller.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/other_widgets/item.dart';
import 'package:social_event/view/component/text/common_text.dart';

import '../../../helpers/app_routes.dart';

class ChantInfoScreen extends StatefulWidget {
  const ChantInfoScreen({super.key});

  @override
  State<ChantInfoScreen> createState() => _ChantInfoScreenState();
}

class _ChantInfoScreenState extends State<ChantInfoScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CommonText(
          text: AppString.chatInfo,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: GetBuilder<ChatInfoController>(
        builder: (controller) => Column(
          children: [
            20.height,
            CommonImage(
              imageSrc: AppImages.image1,
              imageType: ImageType.png,
              height: 130,
              width: 130,
            ),
            const CommonText(
              text: "Liu Jiameng",
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            const CommonText(
              text: "+86 234 5678900",
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            Container(
              height: 8,
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              color: const Color(0xffEEEEEE),
            ),
            20.height,
            Item(title: AppString.searchChatHistory),
            ItemWithSwitch(
              title: AppString.muteNotifications,
              value: controller.isNotification,
              onTap: controller.changeNotification,
            ),
            ItemWithSwitch(
              title: AppString.stickyOnTop,
              value: controller.isSticky,
              onTap: controller.changeSticky,
            ),
            ItemWithSwitch(
              title: AppString.alert,
              value: controller.isAlert,
              onTap: controller.changeAlert,
              disableDivider: true,
            ),
            Container(
              height: 6,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              color: const Color(0xffEEEEEE),
            ),
            20.height,
            Item(
              title: AppString.background,
              onTap: () => Get.toNamed(AppRoutes.setBackground),
            ),
            Item(
              title: AppString.clearChatHistory,
              onTap: () => Get.toNamed(AppRoutes.clearChatHistory),
            ),
            Item(
              title: AppString.report,
              onTap: () => Get.toNamed(AppRoutes.report),
            ),
          ],
        ),
      ),
    );
  }
}
