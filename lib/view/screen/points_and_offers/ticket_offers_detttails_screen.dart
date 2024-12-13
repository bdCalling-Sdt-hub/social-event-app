import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/home/widgets/favorite_item.dart';

class TicketOffersDetttailsScreen extends StatelessWidget {
  const TicketOffersDetttailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CommonImage(
                  width: double.infinity,
                  height: 450,
                  imageType: ImageType.png,
                  imageSrc: AppImages.ticket_offers),
              Positioned(
                top: 30,
                  left: 20,
                  child: GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor,
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: AppColors.white,
                        )),
                  ))
            ],
          ),
          10.height,
          
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(
                    top: 25,
                    fontSize: 22,

                    fontWeight: FontWeight.w700,
                    text: AppString.ticketOffers),

                Icon(Icons.favorite_border, color:AppColors.primaryColor,),

              ],
            ),
          ),


          30.height,
          
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CommonText(text: AppString.redemPoints),
                CommonText(text: "10000")
              ],
            ),
          ),
          
          
          const Align(
            alignment: Alignment.centerLeft,
            child: CommonText(
                top: 30,
                left: 20,
                fontWeight: FontWeight.w700,
                fontSize: 20,

                text: AppString.eventDetails),
          ),

          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: FavoriteItem(),
          )

          



        ],
      ),
      bottomNavigationBar: Padding(
        padding:  const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: CommonButton(
            onTap: (){
              Get.toNamed(AppRoutes.ticket_offers_cart);
            },
            titleText: AppString.add),
      ),
    );
  }
}
