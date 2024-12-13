import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/controllers/setting/message_notification_controller.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/helpers/other_helper.dart';

import '../../../../helpers/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/other_widgets/item.dart';
import '../../../component/text/common_text.dart';

class MessageNotificationScreen extends StatelessWidget {
  const MessageNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.messageNotifications),
      ),
      body: GetBuilder<MessageNotificationController>(
        builder: (controller) => Column(
          children: [
            10.height,
            ItemWithSwitch(
              title: AppString.newMessageAlert,
              value: controller.isAlert,
              onTap: controller.changeAlert,
            ),
            ItemWithSwitch(
              title: AppString.receiveNotificationForVoiceAndVideoCalls,
              value: controller.isCallNotification,
              onTap: controller.changeCallNotification,
            ),
            ItemWithSwitch(
              title: AppString.allNotifications,
              value: controller.isNotification,
              onTap: controller.changeNotification,
            ),
            const Item(
              title: AppString.ringtoneForIncomingCalls,
            ),
            const Item(
                onTap: OtherHelper.openSystemSetting,
                title: AppString.deviceSettings,
                subTitle: AppString.goToSettings),
            Item(
                onTap: () => Get.toNamed(AppRoutes.alertSound),
                title: AppString.alertSound,
                subTitle: AppString.auto),
          ],
        ),
      ),
    );
  }
}
