import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../../controllers/setting/friend_permission_controller.dart';
import '../../../../helpers/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/other_widgets/item.dart';
import '../../../component/text/common_text.dart';

class FriendPermissionScreen extends StatelessWidget {
  const FriendPermissionScreen({super.key});

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
      body: GetBuilder<FriendPermissionController>(
        builder: (controller) => Column(
          children: [
            10.height,
            ItemWithSwitch(
              title: AppString.requireFriendRequest,
              value: controller.isSpeakers,
              onTap: controller.changeSpeaker,
            ),
            ItemWithSwitch(
              title: AppString.findMobileContacts,
              value: controller.isEnterSend,
              onTap: controller.changeEnterSend,
            ),
            Item(
              title: AppString.comment,
              onTap: () => Get.toNamed(AppRoutes.comment),
            ),
            Item(
              title: AppString.methodOfMakingFriends,
              onTap: () => Get.toNamed(AppRoutes.methodMaking),
            ),
            Item(
              onTap: () => Get.toNamed(AppRoutes.blockList),
              title: AppString.blockedList,
            ),
          ],
        ),
      ),
    );
  }
}
