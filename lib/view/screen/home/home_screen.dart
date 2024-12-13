import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/home/widgets/event_item.dart';
import 'package:social_event/view/screen/home/widgets/favorite_item.dart';
import 'package:social_event/view/screen/home/widgets/home_appbar.dart';

import '../../../controllers/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: homeAppbar(),
      body: GetBuilder<HomeController>(
        builder: (controller) => SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CommonText(
                        text: AppString.joinList,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      const Spacer(),
                      const InkWell(
                        // onTap: () => Get.toNamed(AppRoutes.filters),
                        child: CircleAvatar(
                            radius: 16,
                            backgroundColor: AppColors.primaryColor,
                            child: Icon(
                              Icons.menu,
                              color: AppColors.white,
                            )),
                      ),
                      8.width,
                      InkWell(
                        onTap: () => Get.toNamed(AppRoutes.filters),
                        child: const CircleAvatar(
                            radius: 16,
                            backgroundColor: AppColors.primaryColor,
                            child: Icon(
                              Icons.filter_alt_outlined,
                              color: AppColors.white,
                            )),
                      ),
                      8.width,
                      InkWell(
                          onTap: controller.changeJoin,
                          child: const Icon(Icons.keyboard_arrow_down))
                    ],
                  ),
                  const CommonText(
                    text: "Monday, 23 October, 2023",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    top: 8,
                  ),
                  if (!controller.favorite)
                    AnimatedContainer(
                      height: controller.joinEvent ? 500 : 300,
                      duration: const Duration(seconds: 1),
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Get.toNamed(AppRoutes.eventDetails),
                            child: const EventItem()),
                      ),
                    )
                ],
              ),
              12.height,
              Column(
                children: [
                  Row(
                    children: [
                      const CommonText(
                        text: AppString.favoriteList,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => Get.toNamed(AppRoutes.filters),
                        child: const CircleAvatar(
                            radius: 16,
                            backgroundColor: AppColors.primaryColor,
                            child: Icon(
                              Icons.filter_alt_outlined,
                              color: AppColors.white,
                            )),
                      ),
                      8.width,
                      InkWell(
                          onTap: controller.changeFavorite,
                          child: const Icon(Icons.keyboard_arrow_up))
                    ],
                  ),
                  if (!controller.joinEvent)
                    AnimatedContainer(
                      height: !controller.favorite ? 200 : 500,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOutQuart,
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Get.toNamed(AppRoutes.eventPage),
                            child: const FavoriteItem()),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CommonBottomNavBar(currentIndex: 0),
    );
  }
}
