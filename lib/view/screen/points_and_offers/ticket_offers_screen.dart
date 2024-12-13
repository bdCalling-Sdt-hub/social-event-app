import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/home/widgets/favorite_item.dart';

class TicketOffersScreen extends StatelessWidget {
  const TicketOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CommonText(
             fontSize: 24,
            color: AppColors.white,
            text: AppString.ticketOffers),
        backgroundColor: AppColors.primaryColor,
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                    itemBuilder: (context, index){
                      return InkWell(

                          onTap: (){
                            Get.toNamed(AppRoutes.ticket_offers_dettails);
                          },
                          child: const FavoriteItem());

                }),
              )
            ],
          ),
        ),
      ) ,
    );
  }
}
