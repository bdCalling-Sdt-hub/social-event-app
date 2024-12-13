import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/text/common_text.dart';

void moreBottomSheet() {
  showModalBottomSheet(
    context: Get.context!,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.height,
             Row(
              children: [
                Icon(Icons.arrow_circle_up),
                CommonText(
                  text: "See More Posts Like This".tr,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
            6.height,
            const Divider(),
            6.height,
             Row(
              children: [
                Icon(Icons.arrow_circle_down),
                CommonText(
                  text: "See Less Posts Like This".tr,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
            6.height,
            const Divider(),
            6.height,
            InkWell(
              onTap: () {
                Get.back();
                blockUserBottomSheet();
              },
              child:  Row(
                children: [
                  Icon(
                    Icons.block,
                    color: AppColors.primaryColor,
                  ),
                  CommonText(
                    text: "${"Block".tr} Jon Doe",
                    fontSize: 15,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ),
            6.height,
            const Divider(),
            20.height
          ],
        ),
      );
    },
  );
}

void blockUserBottomSheet() {
  showModalBottomSheet(
    context: Get.context!,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.height,
            const CircleAvatar(
              radius: 45,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.block_flipped,
                color: AppColors.white,
                size: 60,
              ),
            ),
             CommonText(
              text: "Are you sure you want to block John Doe?".tr,
              fontSize: 24,
              top: 30,
              fontWeight: FontWeight.bold,
              maxLines: 2,
            ),
            30.height,
            Row(
              children: [
                Expanded(
                    child: CommonButton(
                  titleText: "Cancel".tr,
                  buttonColor: AppColors.transparent,
                  titleColor: AppColors.primaryColor,
                  onTap: () => Get.back(),
                )),
                20.width,
                Expanded(
                    child: CommonButton(
                  titleText: "Block".tr,
                  onTap: () => Get.back(),
                )),
              ],
            )
          ],
        ),
      );
    },
  );
}
