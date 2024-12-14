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
                const Icon(Icons.arrow_circle_up),
                CommonText(
                  text: AppString.seeMorePostsLikeThis,
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
                const Icon(Icons.arrow_circle_down),
                CommonText(
                  text: AppString.seeLessPostsLikeThis,
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
                  const Icon(
                    Icons.block,
                    color: AppColors.primaryColor,
                  ),
                  CommonText(
                    text: AppString.blockUser,
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
              text: AppString.blockUserDetails,
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
                  titleText: AppString.cancel,
                  buttonColor: AppColors.transparent,
                  titleColor: AppColors.primaryColor,
                  onTap: () => Get.back(),
                )),
                20.width,
                Expanded(
                    child: CommonButton(
                  titleText: AppString.block,
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
