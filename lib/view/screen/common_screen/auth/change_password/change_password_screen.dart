import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../helpers/my_extension.dart';
import '../../../../../controllers/common_controller/auth/change_password_controller.dart';
import '../../../../../helpers/app_routes.dart';
import '../../../../../helpers/other_helper.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/text/common_text.dart';
import '../../../../component/text_field/common_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  CommonText(
          text: AppString.changePassword,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: GetBuilder<ChangePasswordController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  70.height,
                   CommonText(
                    text: AppString.currentPassword,
                    bottom: 8,
                  ),
                  CommonTextField(
                    controller: controller.currentPasswordController,
                    hintText: AppString.currentPassword,
                    validator: OtherHelper.passwordValidator,
                    isPassword: true,
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 20,
                    ),
                  ),
                   CommonText(
                    text: AppString.newPassword,
                    bottom: 8,
                    top: 16,
                  ),
                  CommonTextField(
                    controller: controller.newPasswordController,
                    hintText: AppString.newPassword,
                    validator: OtherHelper.passwordValidator,
                    isPassword: true,
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 20,
                    ),
                  ),
                   CommonText(
                    text: AppString.confirmPassword,
                    bottom: 8,
                    top: 16,
                  ),
                  CommonTextField(
                    controller: controller.confirmPasswordController,
                    hintText: AppString.confirmPassword,
                    validator: (value) => OtherHelper.confirmPasswordValidator(
                        value, controller.newPasswordController),
                    isPassword: true,
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 20,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.forgotPassword),
                      child:  CommonText(
                        text: AppString.forgotPassword,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        top: 16,
                        bottom: 20,
                      ),
                    ),
                  ),
                  CommonButton(
                    titleText: AppString.confirm,
                    isLoading: controller.isLoading,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        controller.changePasswordRepo();
                      }
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
