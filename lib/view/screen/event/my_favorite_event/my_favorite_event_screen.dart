import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/custom_bottom_sheet/custom_bottomsheet.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/home/widgets/favorite_item.dart';

class MyFavoriteEventScreen extends StatelessWidget {
  const MyFavoriteEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.searchEvent),
      ),

      body: SizedBox(
        child: ListView.builder(
          itemCount: 5,
            itemBuilder: (context, index){
              return const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child: FavoriteItem(),
              );
            }),
      ),
      bottomNavigationBar: Padding(
        padding:  const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: CommonButton(
            onTap: (){
              customBottomsheet(context, title: AppString.createdGroup, ontap: (){
                Get.back();
              });
            },
            titleText: AppString.createGroup),
      ),
    );
  }
}
