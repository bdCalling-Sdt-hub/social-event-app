import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/search/search_location.dart';

import '../../../helpers/app_routes.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../home/widgets/favorite_item.dart';

class FeaturedActivitiesScreen extends StatelessWidget {
  const FeaturedActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title:  CommonText(
          text: "Featured activities".tr,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: Column(
        children: [
          searchLocation(),
          Expanded(
            child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),

              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.eventPage),
                    child: const FavoriteItem()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
