
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/controllers/points_and_offer_controller/points_and_offers_controller.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/text/common_text.dart';

import '../../../../utils/app_string.dart';

class AddPhotoSection extends StatelessWidget {
  const AddPhotoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PointAndOffersController>(
      builder: (controller) {
        return Column(
          children: [
            Container(
              height: 389,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffD9D9D9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.image_outlined),
                      12.width,
                      const Icon(Icons.videocam_outlined),
                    ],
                  ),
                   CommonText(
                    text: "Add up to 6 images".tr,
                    color: Color(0xff909090),
                    fontSize: 12,
                    top: 12,
                  ),



                ],
              ),
            ),
            15.height,

            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  6,
                      (index) => Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(

                          color: const Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        size: 18,
                      )),
                ),
              ),
            ),

            30.height,

            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 20),
              child: CommonButton(

                  onTap: (){
                    controller.selectGroupButton(0);

                  },
                  titleText: "Post".tr),
            ),

            30.height,
          ],
        );
      }
    );
  }
}
