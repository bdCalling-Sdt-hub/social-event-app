import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/text/common_text.dart';

import 'inner_widget/item_button.dart';

class PointAndOffers extends StatelessWidget {
  const PointAndOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title:  CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            text: "Points & Offers".tr),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            30.height,
            Container(
              width: 300,
              height: 125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.normalTeal),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor,
                      text: "24,513"),
                  CommonText(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor,
                      text: "Your Points".tr),
                ],
              ),
            ),
            42.height,
            itemButton(
                ontap: (){
                  Get.toNamed(AppRoutes.groupContribution);
                },
                title: "Group Contributions".tr, subTitle: "+1,200"),

            itemButton(

                ontap: (){
                  Get.toNamed(AppRoutes.eventContribution);

                },
                title: "Event Contributions".tr, subTitle: "+3,200"),

            itemButton(
                ontap: (){
                  Get.toNamed(AppRoutes.ticket_offers);
                },
                title: "Ticket Offers".tr),
            itemButton(
                ontap: (){
                  Get.toNamed(AppRoutes.product_exchange_screen);
                },
                title: "Product Exchange".tr),

          ],
        ),
      ),
    );
  }
}
