import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import '../../../../helpers/my_extension.dart';

import 'package:get/get.dart';
import '../../../../helpers/app_routes.dart';
import '../../../component/image/common_image.dart';
import '../../../component/text/common_text.dart';

class MarketingScreen extends StatefulWidget {
  const MarketingScreen({super.key});

  @override
  State<MarketingScreen> createState() => _MarketingScreenState();
}

class _MarketingScreenState extends State<MarketingScreen> {
  bool selectedCountry = false;
  int index = 0;

  List list = [
    {
      "image": AppImages.welcome,
      "bg": AppImages.onboardingBg1,
      "title": "Welcome to Baole Bei",
      "subtitle": "Explore new social worlds"
    },
    {
      "image": AppImages.discover,
      "bg": AppImages.onboardingBg2,
      "title": "Discover exciting activities",
      "subtitle": "Find the best activity near you"
    },
    {
      "image": AppImages.create,
      "bg": AppImages.onboardingBg3,
      "title": "Create your event",
      "subtitle": "Interact with friends near you"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(list[index]['bg']), fit: BoxFit.fill)),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              50.height,
              Center(
                  child: CommonImage(
                imageSrc: list[index]["image"],
                height: 420,
                width: double.infinity,
                imageType: ImageType.png,
              )),
              CommonText(
                text: list[index]["title"],
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ).center,
              CommonText(
                text: list[index]["subtitle"],
                fontWeight: FontWeight.w400,
                top: 16,
                bottom: 60,
                color: AppColors.black,
              ).center,
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (index == 0) return;
                      index--;
                      setState(() {});
                    },
                    child: const CircleAvatar(
                        backgroundColor: AppColors.white,
                        child: Icon(
                          CupertinoIcons.arrow_left,
                          color: AppColors.primaryColor,
                        )),
                  ),
                  10.width,
                  Expanded(
                      child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            height: 8,
                            decoration: BoxDecoration(
                                color: index == 0
                                    ? AppColors.primaryColor
                                    : AppColors.transparent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        10.width,
                        Expanded(
                          child: Container(
                            height: 8,
                            decoration: BoxDecoration(
                                color: index == 1
                                    ? AppColors.primaryColor
                                    : AppColors.transparent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        10.width,
                        Expanded(
                          child: Container(
                            height: 8,
                            decoration: BoxDecoration(
                                color: index == 2
                                    ? AppColors.primaryColor
                                    : AppColors.transparent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                  )),
                  10.width,
                  InkWell(
                      onTap: () {
                        if (index > 1) {
                          Get.toNamed(AppRoutes.signUp);
                          return;
                        }
                        index++;
                        setState(() {});
                      },
                      child: const CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          child: Icon(
                            CupertinoIcons.arrow_right,
                            color: AppColors.white,
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
