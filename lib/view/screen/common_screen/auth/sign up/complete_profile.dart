import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/controllers/common_controller/profile/profile_controller.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/common_screen/auth/sign%20up/widget/complete_profile_all_filed.dart';
import 'package:social_event/view/screen/common_screen/auth/sign%20up/widget/profile_image.dart';

import '../../../../component/button/common_button.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title:  CommonText(
          text: "Complete Your Profile".tr,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
      ),
      body: GetBuilder<ProfileController>(
        builder: (controller) => SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const ProfileImage(
                takeImage: true,
              ).center,
              const CompleteProfileAllFiled(),
              30.height,
              CommonButton(
                titleText: "Register".tr,
                onTap: () => Get.toNamed(AppRoutes.locationAccess),
              ),
              30.height,
            ],
          ),
        ),
      ),
    );
  }
}
