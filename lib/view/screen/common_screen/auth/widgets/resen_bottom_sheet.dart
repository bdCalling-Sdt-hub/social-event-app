import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/text/common_text.dart';

void showBottomSheetModel() {
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
              text: "Code Sent".tr,
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
