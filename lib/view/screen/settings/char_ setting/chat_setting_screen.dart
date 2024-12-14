import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../../controllers/setting/chat_setting_controller.dart';
import '../../../../helpers/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/other_widgets/item.dart';
import '../../../component/text/common_text.dart';

class ChatSettingScreen extends StatelessWidget {
  const ChatSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.chats),
      ),
      body: GetBuilder<ChatSettingController>(
        builder: (controller) => Column(
          children: [
            10.height,
            ItemWithSwitch(
              title: AppString.turnOffSpeakers,
              value: controller.isSpeakers,
              onTap: controller.changeSpeaker,
            ),
            ItemWithSwitch(
              title: AppString.pressEnterToSend,
              value: controller.isEnterSend,
              onTap: controller.changeEnterSend,
            ),
            Item(
              title: AppString.background,
              subTitle: AppString.defaul,
              onTap: () => Get.toNamed(AppRoutes.chatBackground),
            ),
            Item(
              title: AppString.myStickers,
            ),
            Item(
                // onTap: () => Get.toNamed(AppRoutes.alertSound),
                title: AppString.chatHistoryBackup,
                subTitle: AppString.daily),
            Item(
              onTap: () => Get.toNamed(AppRoutes.alertSound),
              title: AppString.clearChatRecords,

            ),
          ],
        ),
      ),
    );
  }
}
