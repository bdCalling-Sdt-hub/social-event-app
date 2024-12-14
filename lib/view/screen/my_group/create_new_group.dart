import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/controllers/my_group/my_group_controller.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/component/text_field/common_text_field.dart';
import 'package:social_event/view/component/text_field/custom_text_field.dart';
import 'package:social_event/view/screen/my_group/inner_widget/create_new_group_people_item.dart';

import '../../../utils/app_images.dart';

class CreateNewGroup extends StatelessWidget {
  const CreateNewGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 80),
        child: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 18),
            child: CommonText(
                color: AppColors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
                maxLines: 2,
                text: "Create New or Add to \nGroup"),
          ),
          backgroundColor: AppColors.primaryColor,
        ),
      ),
      body: GetBuilder<MyGroupController>(builder: (controller) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                15.height,

                //==========================Upload Group image==================
                Center(
                  child: InkWell(
                    onTap: controller.getGroupImage,
                    child: CircleAvatar(
                      radius: 68,
                      backgroundColor: const Color(0xffEEEEEE),
                      child: ClipOval(
                        child: controller.image != null
                            ? Image.file(
                                File(controller.image!),
                                width: 130,
                                height: 130,
                                fit: BoxFit.fill,
                              )
                            : const Icon(
                                size: 60,
                                color: AppColors.black,
                                Icons.camera_alt_rounded),
                      ),
                    ),
                  ),
                ),

                //=========================Enter group name section==================
                 CommonText(
                    top: 20,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    text: AppString.groupName),

                CommonTextField(
                  controller: controller.groupNameController,
                  hintText: AppString.enterGroupName,
                ),

                20.height,
                CommonText(
                    fontSize: 18,
                    bottom: 12,
                    fontWeight: FontWeight.w700,
                    text: AppString.addIntoGroup),

                //===================3 button===========================

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    intoItem(
                        title: AppString.newEvent,
                        itemNumber: 0,
                        selectedButtonIndex:
                            controller.selectedButtonIndex.value),
                    intoItem(
                        title: AppString.existingEvent,
                        itemNumber: 1,
                        selectedButtonIndex:
                            controller.selectedButtonIndex.value),
                    intoItem(
                        title: AppString.chatOnly,
                        itemNumber: 2,
                        selectedButtonIndex:
                            controller.selectedButtonIndex.value),
                  ],
                ),

                //====================================Group members and search====================

                CommonText(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    top: 20,
                    bottom: 10,
                    text: AppString.groupMember),

                CustomTextField(
                  controller: controller.searchPeopleController,
                  prefixIcon: const Icon(Icons.search),
                  hindText: AppString.searchForPeopleAdd,
                ),

                //=====================list view for people===============================

                controller.selectedButtonIndex.value == 0
                    ? SizedBox(
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return createNewGroupPeopleItem(
                                  name: "Du Jianhan 0",
                                  image: AppImages.image1);
                            }),
                      )
                    : controller.selectedButtonIndex.value == 1
                        ? SizedBox(
                            child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return createNewGroupPeopleItem(
                                      name: "Du Jianhan1",
                                      image: AppImages.image2);
                                }))
                        : SizedBox(
                            child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return createNewGroupPeopleItem(
                                      name: "Du Jianhan2",
                                      image: AppImages.image3);
                                }),
                          )
              ],
            ),
          ),
        );
      }),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: CommonButton(
            onTap: () {
              Get.toNamed(AppRoutes.createEvent);
            },
            titleText: AppString.continues),
      ),
    );
  }
}

intoItem(
    {required int selectedButtonIndex,
    required String title,
    required int itemNumber}) {
  return InkWell(
    onTap: () => MyGroupController.instance.selectedButton(itemNumber),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: selectedButtonIndex == itemNumber
            ? AppColors.primaryColor
            : AppColors.transparent,
        border: Border.all(
          color: selectedButtonIndex == itemNumber
              ? AppColors.transparent
              : AppColors.black,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: CommonText(
        text: title,
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: selectedButtonIndex == itemNumber
            ? AppColors.white
            : AppColors.black,
      ),
    ),
  );

  // return CommonButton(
  //     onTap: () => controller.selectedButton(0),
  //     buttonWidth: 145,
  //     buttonHeight: 50,
  //     borderColor: controller.selectedButtonIndex.value == 0
  //         ? AppColors.transparent
  //         : AppColors.black,
  //     titleSize: 16.sp,
  //     titleColor: controller.selectedButtonIndex.value == 0
  //         ? AppColors.white
  //         : AppColors.black,
  //     buttonColor: controller.selectedButtonIndex.value == 0
  //         ? AppColors.primaryColor
  //         : AppColors.transparent,
  //     titleText: AppString.newEvent)
}
