import 'package:flutter/material.dart';
import 'package:social_event/view/component/other_widgets/back.dart';
import 'package:social_event/view/screen/common_screen/auth/sign%20up/widget/privacy_policy.dart';
import '../../../../../helpers/my_extension.dart';

import 'package:get/get.dart';
import '../../../../../controllers/common_controller/auth/sign_up_controller.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/text/common_text.dart';
import '../../../../component/text_field/common_phone_number_text_filed.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: back(),
        ),
        body: GetBuilder<SignUpController>(
          builder: (controller) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
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
                     CommonText(
                      text: "Create an account".tr,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor,
                      top: 50,
                      bottom: 50,
                    ).center,
                     CommonText(
                      text: "Phone Number".tr,
                      bottom: 8,
                    ),
                    CommonPhoneNumberTextFiled(
                      controller: controller.numberController,
                      countryChange: (value) {},
                    ),
                    20.height,
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Checkbox(
                              side: const BorderSide(color: AppColors.primaryColor, ),
                              value: controller.isAccept,
                              onChanged: controller.changeAccept),
                        ),
                        8.width,
                        const Flexible(child: PrivacyPolicy()),
                      ],
                    ),
                    30.height,
                    CommonButton(
                      titleText: "Continue".tr,
                      isLoading: controller.isLoading,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          controller.signUpUser();
                        }
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
