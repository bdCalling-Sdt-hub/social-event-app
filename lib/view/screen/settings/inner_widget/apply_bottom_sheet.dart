import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/text/common_text.dart';

void applyBottomSheetModel() {
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
              CupertinoIcons.chat_bubble_2,
              size: 120,
              color: Colors.teal,
            ),
            16.height,
            CommonText(
              text: AppString.applyToAllChats,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            16.height,
            Row(
              children: [
                Expanded(
                  child: CommonButton(
                    titleText: AppString.cancel,
                    buttonColor: AppColors.transparent,
                    titleColor: AppColors.primaryColor,
                    onTap: () => Get.back(),
                  ),
                ),
                20.width,
                Expanded(
                  child: CommonButton(
                    titleText: AppString.ok,
                    onTap: () => Get.back(),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
