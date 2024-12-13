import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/controllers/points_and_offer_controller/points_and_offers_controller.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/points_and_offers/inner_widget/add_photo_section.dart';
import 'package:social_event/view/screen/points_and_offers/inner_widget/add_reviews_section.dart';
import 'package:social_event/view/screen/points_and_offers/inner_widget/contribute_section.dart';
import 'package:social_event/view/screen/points_and_offers/inner_widget/contribution_basic_info.dart';
import 'package:social_event/view/screen/points_and_offers/inner_widget/photos_section.dart';
import 'package:social_event/view/screen/points_and_offers/inner_widget/reviews_section.dart';
import 'package:social_event/view/screen/points_and_offers/inner_widget/selected_button.dart';

class GroupContribution extends StatelessWidget {
  const GroupContribution({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            color: AppColors.white,
            text: AppString.groupContribution),
      ),
      body: GetBuilder<PointAndOffersController>(builder: (controller) {
        return SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                20.height,
              ContributionBasicInfo(
                  image: AppImages.groupContribution,
                  title: AppString.groupContribution,
                  members: "12 members"),

                controller.selectedGroupIndex.value==3 || controller.selectedGroupIndex.value==4?
                const SizedBox(
                  height: 20,
                ) : const SizedBox(
                  height: 40,
                ),
            
                //===============================selected Button section=======================

                controller.selectedGroupIndex.value==3 || controller.selectedGroupIndex.value==4?const SizedBox():
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    selectedButton(
                      ontap: () => controller.selectGroupButton(0),
                      backgroundColor: controller.selectedGroupIndex.value == 0
                          ? AppColors.primaryColor
                          : AppColors.transparent,
                      titleColor: controller.selectedGroupIndex.value == 0
                          ? AppColors.white
                          : AppColors.black,
                      borderColor: controller.selectedGroupIndex.value == 0
                          ? AppColors.transparent
                          : AppColors.black,
                      title: AppString.contribute,
                    ),
            
                    selectedButton(
                      ontap: () => controller.selectGroupButton(1),
                      backgroundColor: controller.selectedGroupIndex.value == 1
                          ? AppColors.primaryColor
                          : AppColors.transparent,
                      titleColor: controller.selectedGroupIndex.value == 1
                          ? AppColors.white
                          : AppColors.black,
                      borderColor: controller.selectedGroupIndex.value == 1
                          ? AppColors.transparent
                          : AppColors.black,
                      title: AppString.reviews,
                    ),
            
                    selectedButton(
                      ontap: () => controller.selectGroupButton(2),
                      backgroundColor: controller.selectedGroupIndex.value == 2
                          ? AppColors.primaryColor
                          : AppColors.transparent,
                      titleColor: controller.selectedGroupIndex.value == 2
                          ? AppColors.white
                          : AppColors.black,
                      borderColor: controller.selectedGroupIndex.value == 2
                          ? AppColors.transparent
                          : AppColors.black,
                      title: AppString.photos,
                    ),
            
            
                  ],
                ),
            
                //===============================Selected Screen=======================
            
                controller.selectedGroupIndex.value == 0
                    ? ContributeSection(addPhotoOntap: ()=> controller.selectGroupButton(3), addReviewsOntap: ()=>  controller.selectGroupButton(4),)
                    : controller.selectedGroupIndex.value == 1
                    ? const ReviewsSection()
                    :controller.selectedGroupIndex.value==2? const PhotosSection():

                controller.selectedGroupIndex.value==3?
                const AddPhotoSection():const AddReviewsSection()
              ],
            ),
          ),
        );
      }),
    );
  }
}
