import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/view/component/text_field/common_text_field.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/button/common_button.dart';
import '../../../component/text/common_text.dart';

class PasswordScreen extends StatelessWidget {
   PasswordScreen({super.key});

  TextEditingController currentPasswordController=TextEditingController();
  TextEditingController nwqPasswordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.password),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20, ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.height,
              const CommonText(
                  fontSize: 22,
                  bottom: 2,
                  fontWeight: FontWeight.w700,
                  text: AppString.currentPassword),


              CommonTextField(
                controller: currentPasswordController,
                isPassword: true,

              ),


              const CommonText(
                top: 15,
                  fontSize: 22,
                  bottom: 2,
                  fontWeight: FontWeight.w700,
                  text: AppString.newPassword),


              CommonTextField(
                controller: nwqPasswordController,
                isPassword: true,

              ),


              const CommonText(
                top: 15,
                  fontSize: 22,
                  bottom: 2,
                  fontWeight: FontWeight.w700,
                  text: AppString.confirmNewPassword),


              CommonTextField(
                controller: confirmPasswordController,
                isPassword: true,

              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding:  const EdgeInsets.all(20),
        child: CommonButton(
            onTap: (){
              Get.back();
            },
            titleText: AppString.saveAndChanges),
      ),
    );


  }
}
