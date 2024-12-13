import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/helpers/other_helper.dart';

import '../../../../controllers/setting/chat_setting_controller.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/other_widgets/item.dart';
import '../../../component/text/common_text.dart';
import '../inner_widget/apply_bottom_sheet.dart';

class ChatBackground extends StatelessWidget {
  const ChatBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.chats),
      ),
      body: GetBuilder<ChatSettingController>(
        builder: (controller) => Column(
          children: [
            10.height,
            Item(
              title: AppString.chooseWallpaper,
              onTap: () => Get.toNamed(AppRoutes.wallpaper),
            ),
            const Item(
              title: AppString.choosePhoto,
              onTap: OtherHelper.openGallery,
            ),
            const Item(
              title: AppString.takePhoto,
              onTap: OtherHelper.openCamera,
            ),
            const Item(
              title: AppString.applyToAllChats,
              onTap: applyBottomSheetModel,
            ),
          ],
        ),
      ),
    );
  }
}
