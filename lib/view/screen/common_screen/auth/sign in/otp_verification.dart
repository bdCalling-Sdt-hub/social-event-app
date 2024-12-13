import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/view/component/other_widgets/back.dart';

import '../../../../../controllers/common_controller/auth/sign_in_controller.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/text/common_text.dart';
import '../widgets/resen_bottom_sheet.dart';

class OtpVerification extends StatelessWidget {
  OtpVerification({super.key});

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
                      text: "Enter the OTC sent to your phone number".tr,
                      maxLines: 2,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor,
                      top: 50,
                      bottom: 30,
                    ).center,
                    Flexible(
                      flex: 0,
                      child: PinCodeTextField(
                        controller: controller.otpController,
                        autoDisposeControllers: false,
                        cursorColor: AppColors.black,
                        appContext: (context),
                        autoFocus: true,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(16),
                          fieldHeight: 60,
                          fieldWidth: 60,
                          activeFillColor: AppColors.transparent,
                          selectedFillColor: AppColors.transparent,
                          inactiveFillColor: AppColors.transparent,
                          borderWidth: 0.5,
                          selectedColor: AppColors.primaryColor,
                          activeColor: AppColors.primaryColor,
                          inactiveColor: CupertinoColors.inactiveGray,
                        ),
                        length: 4,
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.disabled,
                        enableActiveFill: true,
                        validator: (value) {
                          if (value != null && value.length == 4) {
                            return null;
                          } else {
                            return AppString.otpIsInValid;
                          }
                        },
                      ),
                    ),
                    20.height,
                    CommonButton(
                      titleText: "Login".tr,
                      isLoading: controller.isLoading,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Get.toNamed(AppRoutes.home);
                        }
                      },
                    ),
                    60.height,
                     CommonText(
                      text: "Didn’t received the code yet?".tr,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                      bottom: 10,
                    ).center,
                    InkWell(
                      onTap: showBottomSheetModel,
                      child:  CommonText(
                        text: "Resend".tr,
                        color: AppColors.primaryColor,
                      ).center,
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
