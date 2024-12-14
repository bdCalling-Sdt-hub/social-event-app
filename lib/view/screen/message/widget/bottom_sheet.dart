import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_icons.dart';
import 'package:social_event/view/component/image/common_image.dart';

import '../../../../utils/app_string.dart';
import '../../../component/button/common_button.dart';
import '../../../component/text/common_text.dart';

void successBottomSheet(String message) {
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
            Container(
              width: double.infinity,
            ),
            const Icon(
              Icons.check_circle,
              size: 70,
              color: Colors.teal,
            ),
            16.height,
            CommonText(
              text: message,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            16.height,
            CommonButton(
                titleText: AppString.done,
                onTap: () {
                  Get.back();
                  Get.back();
                }),
          ],
        ),
      );
    },
  );
}

void leaveBottomSheet(String message) {
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
            Container(
              width: double.infinity,
            ),
            CommonImage(
              imageSrc: AppIcons.leave,
              imageType: ImageType.svg,
              borderRadius: 50,
              height: 90,
              width: 90,
            ),
            16.height,
            CommonText(
              text: message,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              maxLines: 3,
            ),
            16.height,
            Row(
              children: [
                Expanded(
                  child: CommonButton(
                      titleText: AppString.cancel,
                      buttonColor: AppColors.transparent,
                      titleColor: AppColors.primaryColor,
                      onTap: () {
                        Get.back();
                      }),
                ),
                20.width,
                Expanded(
                  child: CommonButton(
                      titleText: AppString.done,
                      onTap: () {
                        Get.back();
                      }),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

void groupNoteBottomSheet() {
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
            14.height,
            Container(
              width: double.infinity,
            ),
            CommonImage(
              imageSrc: AppIcons.edit,
              imageType: ImageType.svg,
              height: 70,
              width: 75,
            ),
            16.height,
            CommonText(
              text: AppString.groupNoticeDetails,
              maxLines: 3,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            16.height,
            CommonButton(
                titleText: AppString.done,
                onTap: () {
                  Get.back();
                }),
            14.height,
          ],
        ),
      );
    },
  );
}
