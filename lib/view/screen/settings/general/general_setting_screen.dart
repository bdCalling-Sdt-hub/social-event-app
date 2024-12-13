import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/helpers/other_helper.dart';

import '../../../../controllers/setting/chat_setting_controller.dart';
import '../../../../helpers/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/other_widgets/item.dart';
import '../../../component/text/common_text.dart';

class GeneralSettingScreen extends StatelessWidget {
  const GeneralSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.general),
      ),
      body: GetBuilder<ChatSettingController>(
        builder: (controller) => Column(
          children: [
            10.height,
            ItemWithSwitch(
              title: AppString.darkMode,
              value: controller.isSpeakers,
              onTap: controller.changeSpeaker,
            ),
            ItemWithSwitch(
              title: AppString.landscapeDisplay,
              value: controller.isEnterSend,
              onTap: controller.changeEnterSend,
            ),
            Item(
              title: AppString.automaticUpdate,
              subTitle: AppString.wiFiOnly,
              onTap: () => Get.toNamed(AppRoutes.automaticUpdate),
            ),
            Item(
              title: AppString.language,
              subTitle: AppString.english,
              onTap: () => Get.toNamed(AppRoutes.language),
            ),
            Item(
              title: AppString.textSize,
              subTitle: AppString.normal,
              onTap: () => Get.toNamed(AppRoutes.textSize),
            ),
            Item(
              title: AppString.photosVideosFilesAndPhoneCalls,
              onTap: () => Get.toNamed(AppRoutes.photoAndCall),
            ),
            const Item(
              title: AppString.storage,
              onTap: OtherHelper.openSystemSetting,
            ),
          ],
        ),
      ),
    );
  }
}
