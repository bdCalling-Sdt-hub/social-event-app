
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/controllers/points_and_offer_controller/points_and_offers_controller.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/rating_bar/rating_bar.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/component/text_field/common_text_field.dart';

class AddReviewsSection extends StatelessWidget {
  const AddReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20),
      child: GetBuilder<PointAndOffersController>(
        builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: CommonText(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    text: AppString.pleaseShareYourFeedbackWithUs),
              ),

              40.height,

              Align(
                  alignment: Alignment.center,
                  child: ratingBar(itemSize: 60, ignoreGesture: false)),


              const CommonText(
                top: 35,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  text: "Write a review"),

              5.height,

              CommonTextField(
                hintText: "Type here...",
                maxLines: 3,
              ),

              50.height,

              CommonButton(
                  onTap: (){
                    controller.selectGroupButton(0);

                  },
                  titleText: AppString.done)
            ],
          );
        }
      ),
    );
  }
}
