import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/controllers/points_and_offer_controller/points_and_offers_controller.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/points_and_offers/inner_widget/contribute_review_item.dart';

class ContributeSection extends StatelessWidget {
   ContributeSection({super.key, required this.addPhotoOntap, required this.addReviewsOntap});

  VoidCallback addPhotoOntap, addReviewsOntap;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PointAndOffersController>(
      builder: (controller) {
        return Column(
          children: [
            20.height,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.normalTeal,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   CommonText(
                      left: 15,
                      top: 15,
                      fontSize: 15,
                      bottom: 25,
                      fontWeight: FontWeight.w600,
                      text: "Add photo & Reviews".tr),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buttonWithIcon(
                          ontap: addPhotoOntap,
                          title: "photos".tr,
                          icon: Icons.photo_album),
                      buttonWithIcon(
                          ontap: addReviewsOntap,
                          title: "Reviews".tr,
                          icon: Icons.reviews_outlined),
                    ],
                  ),
                ],
              ),
            ),
            15.height,
            SizedBox(
              child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                   return contributeReviewItem();

                  }),
            )
          ],
        );
      }
    );
  }

  Widget buttonWithIcon({ontap, title,IconData? icon}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 45,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: AppColors.white),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                color: AppColors.textFiledColor,
                size: 25,
                icon,
              ),
              CommonText(
                  left: 5,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textFiledColor,
                  text: title),
            ],
          ),
        ),
      ),
    );
  }
}
