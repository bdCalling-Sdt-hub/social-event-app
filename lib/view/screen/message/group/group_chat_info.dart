import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/controllers/message/group_chat_info_controller.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/view/screen/message/widget/bottom_sheet.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/other_widgets/item.dart';
import '../../../component/text/common_text.dart';
import '../widget/group_contribution.dart';

class GroupChatInfo extends StatelessWidget {
  const GroupChatInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
          text: AppString.chatInfo,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: GetBuilder<GroupChatInfoController>(
        builder: (controller) => SingleChildScrollView(
          child: Column(
            children: [
              const Contribution(),
              Container(
                height: 8,
                margin: const EdgeInsets.only(top: 0),
                width: double.infinity,
                color: const Color(0xffEEEEEE),
              ),
              10.height,
              const Item(title: AppString.groupName),
              Item(
                title: AppString.groupQRCode,
                onTap: () => Get.toNamed(AppRoutes.groupQrCode),
              ),
              const Item(
                title: AppString.groupNote,
                onTap: groupNoteBottomSheet,
              ),
              Item(
                title: AppString.groupRemark,
                onTap: () => Get.toNamed(AppRoutes.groupRemark),
              ),
              Container(
                height: 8,
                margin: const EdgeInsets.only(top: 0),
                width: double.infinity,
                color: const Color(0xffEEEEEE),
              ),
              10.height,
              const Item(title: AppString.searchChatHistory),
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
                title: AppString.saveToContacts,
                value: controller.isSave,
                onTap: controller.changeSave,
              ),
              Container(
                height: 8,
                margin: const EdgeInsets.only(top: 0),
                width: double.infinity,
                color: const Color(0xffEEEEEE),
              ),
              10.height,
              Item(
                title: AppString.myAliasInGroup,
                onTap: () => Get.toNamed(AppRoutes.myAliasGroup),
              ),
              ItemWithSwitch(
                title: AppString.onScreenNames,
                value: controller.isOnScreen,
                onTap: controller.changeOnScreen,
              ),
              Container(
                height: 8,
                margin: const EdgeInsets.only(top: 0),
                width: double.infinity,
                color: const Color(0xffEEEEEE),
              ),
              10.height,
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
              Item(
                title: AppString.leave,
                color: AppColors.primaryColor,
                disableDivider: true,
                onTap: () => leaveBottomSheet(AppString.leaveDetails),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
