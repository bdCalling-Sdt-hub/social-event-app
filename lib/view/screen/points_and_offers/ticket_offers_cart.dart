import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/custom_bottom_sheet/custom_bottomsheet.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/home/widgets/favorite_item.dart';

class TicketOffersCart extends StatelessWidget {
  const TicketOffersCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CommonText(
            fontSize: 24,
            color: AppColors.white,
            fontWeight: FontWeight.w700,
            text: AppString.cart),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            const FavoriteItem(),
            20.height,

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    text: AppString.redemPoints),

                CommonText(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    text: "10000"),
              ],
            ),

            20.height,

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    text: AppString.yourPoints),

                CommonText(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    text: "24,513"),
              ],
            ),
          ],
        ),
      ),
      
      bottomNavigationBar: Padding(
        padding:  const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: CommonButton(
            onTap: (){
              customBottomsheet(context, title: "Free Ticket Redeemed",ontap:()=> Get.toNamed(AppRoutes.pointAndOffers));
            },
            titleText: AppString.getFreeTicket),
      ),
    );
  }
}
