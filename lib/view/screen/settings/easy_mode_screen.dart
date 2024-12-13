import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_string.dart';
import '../../component/button/common_button.dart';
import '../../component/image/common_image.dart';
import '../../component/text/common_text.dart';

class EasyModeScreen extends StatelessWidget {
  const EasyModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.easyMode),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            150.height,
            CommonImage(
              imageSrc: AppImages.easyMode,
              imageType: ImageType.png,
              height: 150,
              width: 150,
            ).center,
            const CommonText(
              text: AppString.easyMode,
              fontSize: 24,
              top: 20,
              bottom: 20,
              fontWeight: FontWeight.bold,
            ),
            const CommonText(
              text: AppString.easyModeDetails,
              fontSize: 15,
              bottom: 20,
              maxLines: 5,
              fontWeight: FontWeight.w400,
            ),
            const Spacer(),
            20.height,
            CommonButton(
              titleText: AppString.enable,
              titleSize: 24,
              onTap: () => Get.back(),
            ),
            20.height,
          ],
        ),
      ),
    );
  }
}
