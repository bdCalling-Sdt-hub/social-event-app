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
        title:  CommonText(
          text: "Chat Info".tr,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: GetBuilder<GroupChatInfoController>(
        builder: (controller) => SingleChildScrollView(
          child: Column(
            children: [
               Contribution(),
              Container(
                height: 8,
                margin: const EdgeInsets.only(top: 0),
                width: double.infinity,
                color: const Color(0xffEEEEEE),
              ),
              10.height,
               Item(title: "Group Name".tr, subTitle: "Group Name".tr,),
              Item(
                title: "Group QR Code".tr,
                onTap: () => Get.toNamed(AppRoutes.groupQrCode),
              ),
               Item(
                title: "Group Notice".tr,
                onTap: groupNoteBottomSheet,
              ),
              Item(
                title: "Group Remark".tr,
                onTap: () => Get.toNamed(AppRoutes.groupRemark),
              ),
              Container(
                height: 8,
                margin: const EdgeInsets.only(top: 0),
                width: double.infinity,
                color: const Color(0xffEEEEEE),
              ),
              10.height,
               Item(title: "Search Chat History".tr),
              ItemWithSwitch(
                title: "Mute Notifications".tr,
                value: controller.isNotification,
                onTap: controller.changeNotification,
              ),
              ItemWithSwitch(
                title: "Sticky on Top".tr,
                value: controller.isSticky,
                onTap: controller.changeSticky,
              ),
              ItemWithSwitch(
                title: "Save to Contacts".tr,
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
                title: "My Alias in Group".tr,
                onTap: () => Get.toNamed(AppRoutes.myAliasGroup),
              ),
              ItemWithSwitch(
                title: "On-Screen Name".tr,
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
                title: "Background".tr,
                onTap: () => Get.toNamed(AppRoutes.setBackground),
              ),
              Item(
                title: "Clear Chat History".tr,
                onTap: () => Get.toNamed(AppRoutes.clearChatHistory),
              ),
              Item(
                title: "Report".tr,
                onTap: () => Get.toNamed(AppRoutes.report),
              ),
              Item(
                title: "Leave".tr,
                color: AppColors.primaryColor,
                disableDivider: true,
                onTap: () => leaveBottomSheet("Are you sure you want to leave this group chat?".tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
