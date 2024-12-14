import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

class LocationAccessScreen extends StatelessWidget {
  const LocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            100.height,
            CommonImage(
              imageSrc: AppImages.nearlyBy,
              imageType: ImageType.png,
              width: 220,
              height: 220,
            ).center,
             CommonText(
              text:"Find nearby activities".tr,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryColor,
              top: 50,
            ),
             CommonText(
              text: "We will access your location to showcase the ongoing events in your area".tr,
              fontWeight: FontWeight.w400,
              top: 50,
              maxLines: 2,
              bottom: 140,
            ),
            Row(
              children: [
                Expanded(
                    child: CommonButton(
                  titleText: "Skip for now".tr,
                  buttonColor: AppColors.transparent,
                  titleColor: AppColors.primaryColor,
                  onTap: () => Get.toNamed(AppRoutes.home),
                )),
                20.width,
                Expanded(
                    child: CommonButton(
                  titleText: "Allow Access".tr,
                  onTap: () => Get.toNamed(AppRoutes.home),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
