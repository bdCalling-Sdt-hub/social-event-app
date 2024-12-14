import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/component/text_field/common_phone_number_text_filed.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title:  CommonText(text: AppString.phoneNumber, color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w700,),
      ),

      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            25.height,
            CommonText(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                text: AppString.phoneNumber),

            CommonPhoneNumberTextFiled(
                controller: TextEditingController(),
                countryChange: (value){
                  debugPrint(value.toString());

                })
          ],
        ),



      ),

      // ignore: prefer_const_constructors
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
