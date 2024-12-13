import 'package:flutter/material.dart';
import 'package:social_event/view/component/other_widgets/back.dart';
import 'package:social_event/view/component/text_field/common_phone_number_text_filed.dart';
import '../../../../../helpers/my_extension.dart';

import 'package:get/get.dart';
import '../../../../../controllers/common_controller/auth/sign_in_controller.dart';
import '../../../../../helpers/app_routes.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/text/common_text.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: back(),
        ),
        body: GetBuilder<SignInController>(
          builder: (controller) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: CommonImage(
                      imageSrc: AppIcons.logo,
                      height: 240,
                      width: 160,
                      imageColor: AppColors.primaryColor,
                      imageType: ImageType.svg,
                    )),
                    const CommonText(
                      text: AppString.logInToYourAccount,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor,
                      top: 30,
                      bottom: 50,
                    ).center,
                    const CommonText(
                      text: AppString.phoneNumber,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      bottom: 0,
                    ),
                    CommonPhoneNumberTextFiled(
                      controller: controller.numberController,
                      countryChange: (value) {},
                    ),
                    20.height,
                    CommonButton(
                      titleText: AppString.continues,
                      isLoading: controller.isLoading,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          controller.signInUser();
                        }
                      },
                    ),
                    90.height,
                    const CommonText(
                      text: AppString.doNotHaveAccountYet,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                      bottom: 10,
                    ).center,
                    CommonButton(
                      titleText: AppString.createAccount,
                      buttonColor: AppColors.transparent,
                      titleColor: AppColors.primaryColor,
                      onTap: () => Get.toNamed(AppRoutes.signUp),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
