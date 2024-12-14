import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../../controllers/setting/friend_permission_controller.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/other_widgets/item.dart';
import '../../../component/text/common_text.dart';

class MethodMakingScreen extends StatelessWidget {
  const MethodMakingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.methodOfMakingFriends),
      ),
      body: GetBuilder<FriendPermissionController>(
        builder: (controller) => Column(
          children: [
            10.height,
            ItemWithSwitch(
              title: AppString.baoLeBeiID,
              value: controller.isId,
              onTap: controller.changeAutoDownload,
            ),
            ItemWithSwitch(
              title: AppString.mobile,
              value: controller.isMobile,
              onTap: controller.changePhoto,
            ),
            CommonText(
              text: AppString.addMeBy,
              fontSize: 13,
              fontWeight: FontWeight.bold,
              left: 20,
              top: 10,
              bottom: 6,
            ).start,
            ItemWithSwitch(
              title: AppString.groupChat,
              value: controller.isGroup,
              onTap: controller.changeVideo,
            ),
            ItemWithSwitch(
              title: AppString.qRCode,
              value: controller.isQrCode,
              onTap: controller.changeAutoSearch,
            ),
            ItemWithSwitch(
              title: AppString.contactCard,
              value: controller.isCard,
              onTap: controller.changeEnabling,
            ),
          ],
        ),
      ),
    );
  }
}
