import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/my_group/inner_widget/my_group_item.dart';

class MyGroupScreen extends StatelessWidget {
  const MyGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            color: AppColors.white,
            fontWeight: FontWeight.w700,
            text: AppString.myGroups),
      ),

      body: SizedBox(
        child: ListView.builder(
          itemCount: 50,
            itemBuilder: (context, index){
              return myGroupItem();

        }),
        
      ),
      
      bottomNavigationBar: Padding(
        padding:  const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: CommonButton(
            onTap: (){
              Get.toNamed(AppRoutes.createNewGroup);
            },
            titleText: AppString.createNewGroup),
      ),
    );
  }
}
