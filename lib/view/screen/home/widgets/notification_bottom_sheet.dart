import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/component/text_field/common_text_field.dart';

void notificationBottomSheet() {
  showModalBottomSheet(
    context: Get.context!,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            Container(
              width: double.infinity,
            ),
            const Icon(
              Icons.circle_notifications_sharp,
              size: 70,
              color: Colors.teal,
            ),
            16.height,
            const CommonText(
              text: AppString.notifyEventAttendees,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            16.height,
            const CommonText(
              text: AppString.enterCustomMessage,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ).start,
            CommonTextField(
              hintText: AppString.typeHere,
              maxLines: 5,
              keyboardType: TextInputType.multiline,
            ),
            20.height,
            CommonButton(
              titleText: AppString.sendNotification,
              onTap: () => Get.back(),
            ),
          ],
        ),
      );
    },
  );
}
