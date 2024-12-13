import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/image/common_image.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/text/common_text.dart';
import '../common_screen/auth/sign up/widget/privacy_policy.dart';

class ParentalControlMode extends StatefulWidget {
  const ParentalControlMode({super.key});

  @override
  State<ParentalControlMode> createState() => _ParentalControlModeState();
}

class _ParentalControlModeState extends State<ParentalControlMode> {
  bool isAccept = false;

  changeAccept(value) {
    isAccept = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.parentalControlMode),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            150.height,
            CommonImage(
              imageSrc: AppImages.parentalControlMode,
              imageType: ImageType.png,
              height: 150,
              width: 150,
            ).center,
            const CommonText(
              text: AppString.parentalControlMode,
              fontSize: 24,
              top: 20,
              bottom: 20,
              fontWeight: FontWeight.bold,
            ),
            const CommonText(
              text: AppString.parentalControlModeDetails,
              fontSize: 15,
              bottom: 20,
              maxLines: 5,
              fontWeight: FontWeight.w400,
            ),
            const Spacer(),
            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Checkbox(value: isAccept, onChanged: changeAccept),
                ),
                const PrivacyPolicy(),
              ],
            ),
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
