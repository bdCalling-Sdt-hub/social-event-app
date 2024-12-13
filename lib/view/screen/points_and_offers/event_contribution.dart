import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/controllers/points_and_offer_controller/points_and_offers_controller.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/points_and_offers/inner_widget/contribution_basic_info.dart';

import 'inner_widget/add_photo_section.dart';
import 'inner_widget/add_reviews_section.dart';
import 'inner_widget/contribute_section.dart';
import 'inner_widget/photos_section.dart';
import 'inner_widget/reviews_section.dart';
import 'inner_widget/selected_button.dart';

class EventContribution extends StatelessWidget {
  const EventContribution({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            color: AppColors.white,
            text: 'Event Contribution'),
      ),
      body: GetBuilder<PointAndOffersController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ContributionBasicInfo(
                    image: AppImages.eventContribution,
                    title: AppString.eventContribution,
                    members: "12 members"),
            
                controller.selectedEvenIndex.value==3 || controller.selectedEvenIndex.value==4?
                const SizedBox(
                  height: 20,
                ) : const SizedBox(
                  height: 40,
                ),
            
                //===============================selected Button section=======================
            
                controller.selectedEvenIndex.value==3 || controller.selectedEvenIndex.value==4?const SizedBox():
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    selectedButton(
                      ontap: () => controller.selectEventButton(0),
                      backgroundColor: controller.selectedEvenIndex.value == 0
                          ? AppColors.primaryColor
                          : AppColors.transparent,
                      titleColor: controller.selectedEvenIndex.value == 0
                          ? AppColors.white
                          : AppColors.black,
                      borderColor: controller.selectedEvenIndex.value == 0
                          ? AppColors.transparent
                          : AppColors.black,
                      title: AppString.contribute,
                    ),
            
                    selectedButton(
                      ontap: () => controller.selectEventButton(1),
                      backgroundColor: controller.selectedEvenIndex.value == 1
                          ? AppColors.primaryColor
                          : AppColors.transparent,
                      titleColor: controller.selectedEvenIndex.value == 1
                          ? AppColors.white
                          : AppColors.black,
                      borderColor: controller.selectedEvenIndex.value == 1
                          ? AppColors.transparent
                          : AppColors.black,
                      title: AppString.reviews,
                    ),
            
                    selectedButton(
                      ontap: () => controller.selectEventButton(2),
                      backgroundColor: controller.selectedEvenIndex.value == 2
                          ? AppColors.primaryColor
                          : AppColors.transparent,
                      titleColor: controller.selectedEvenIndex.value == 2
                          ? AppColors.white
                          : AppColors.black,
                      borderColor: controller.selectedEvenIndex.value == 2
                          ? AppColors.transparent
                          : AppColors.black,
                      title: AppString.photos,
                    ),
            
            
                  ],
                ),
            
                //===============================Selected Screen=======================
            
                controller.selectedEvenIndex.value == 0
                    ? ContributeSection(addPhotoOntap: ()=> controller.selectEventButton(3), addReviewsOntap:()=>   controller.selectEventButton(4))
                    : controller.selectedEvenIndex.value == 1
                    ? const ReviewsSection()
                    :controller.selectedEvenIndex.value==2? const PhotosSection():
            
                controller.selectedEvenIndex.value==3?
                const AddPhotoSection():const AddReviewsSection()
            
              ],
            ),
          );
        }
      ),
    );
  }
}
