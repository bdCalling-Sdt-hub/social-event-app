import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/text/common_text.dart';

void showBottomSheetModel(BuildContext context, bool isEdit) {
  showModalBottomSheet(
    context: context,
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
              text: isEdit ? "Event Updated".tr : "Event created".tr,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            16.height,
            CommonButton(
              titleText: "Done".tr,
              onTap: () => Get.back(),
            ),
          ],
        ),
      );
    },
  );
}

void transferBottomSheetModel(BuildContext context, bool isEdit) {
  showModalBottomSheet(
    context: context,
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
            const CommonText(
              text: AppString.eventTransferred,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            16.height,
            CommonButton(
              titleText: AppString.done,
              onTap: () => Get.back(),
            ),
          ],
        ),
      );
    },
  );
}
