import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../button/common_button.dart';
import '../text/common_text.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(AppString.noInternet),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Icon(
              Icons.wifi_off,
              size: 100,
            )),
             CommonText(
              text: AppString.noInternet,
              fontSize: 18,
              top: 16,
            ),
             CommonText(
              text: AppString.checkInternet,
              top: 8,
              bottom: 20,
            ),
            CommonButton(
              onTap: () => Get.back(),
              titleText: AppString.back,
              buttonWidth: 80,
              buttonHeight: 40,
              buttonColor: AppColors.black,
            )
          ],
        ),
      ),
    );
  }
}
