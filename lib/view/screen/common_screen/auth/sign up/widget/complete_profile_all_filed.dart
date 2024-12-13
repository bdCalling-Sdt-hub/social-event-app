import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/controllers/common_controller/auth/sign_up_controller.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/component/text_field/common_text_field.dart';

import '../../../../../component/pop_up/common_pop_menu.dart';

class CompleteProfileAllFiled extends StatelessWidget {
  const CompleteProfileAllFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.height,
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: "First Name".tr,
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                    CommonTextField(
                      hintText: "John",
                      paddingHorizontal: 1,
                    )
                  ],
                ),
              ),
              20.width,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: "Last Name".tr,
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                    CommonTextField(
                      hintText: "Doe",
                      paddingHorizontal: 1,
                    )
                  ],
                ),
              ),
            ],
          ),
          CommonText(
            text: "Gender".tr,
            fontWeight: FontWeight.w700,
            top: 12,
            fontSize: 13,
          ),
          CommonTextField(
            hintText: "Select".tr,
            paddingHorizontal: 1,
            controller: controller.genderController,
            onTap: () {
              PopUpMenu(
                onTap: controller.selectedGender,
                items: controller.gender,
                selectedItem: [controller.genderController.text],
              );
            },
            suffixIcon: PopUpMenu(
              onTap: controller.selectedGender,
              items: controller.gender,
              selectedItem: [controller.genderController.text],
            ),
          ),
          CommonText(
            text: "Age Group".tr,
            fontWeight: FontWeight.w700,
            bottom: 10,
            top: 30,
            fontSize: 13,
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.age.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisExtent: 30,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12),
            itemBuilder: (context, index) {
              var item = controller.age[index];
              return Container(
                decoration: BoxDecoration(
                    color: controller.seletedAge.contains(item)
                        ? AppColors.primaryColor
                        : AppColors.transparent,
                    border: Border.all(
                        color: controller.seletedAge.contains(item)
                            ? AppColors.transparent
                            : AppColors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                  onTap: () => controller.selectedAge(index),
                  child: CommonText(
                    text: controller.age[index],
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: controller.seletedAge.contains(item)
                        ? AppColors.white
                        : AppColors.black,
                  ).center,
                ),
              );
            },
          ),
          CommonText(
            text: "Categories".tr,
            fontWeight: FontWeight.w700,
            bottom: 10,
            top: 30,
            fontSize: 13,
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisExtent: 30,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12),
            itemBuilder: (context, index) {
              var item = controller.categories[index];
              return Container(
                decoration: BoxDecoration(
                    color: controller.seletedCategories.contains(item)
                        ? AppColors.primaryColor
                        : AppColors.transparent,
                    border: Border.all(
                        color: controller.seletedCategories.contains(item)
                            ? AppColors.transparent
                            : AppColors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                  onTap: () => controller.selectingCategories(item),
                  child: CommonText(
                    text: item,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: controller.seletedCategories.contains(item)
                        ? AppColors.white
                        : AppColors.black,
                  ).center,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
