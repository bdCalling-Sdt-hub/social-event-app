import 'package:flutter/material.dart';
import 'package:social_event/controllers/language/lanuage_controller.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_icons.dart';
import '../../../../helpers/my_extension.dart';

import 'package:get/get.dart';
import '../../../../helpers/app_routes.dart';
import '../../../../helpers/prefs_helper.dart';
import '../../../../utils/app_string.dart';
import '../../../component/button/common_button.dart';
import '../../../component/image/common_image.dart';
import '../../../component/text/common_text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {


  late AnimationController _animationController;
  late Animation<Offset> _logoAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _logoAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SlideTransition(
        position: _logoAnimation,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: GetBuilder<LanguageController>(
            builder: (languageController) {
              return Column(
                children: [
                  40.height,
                  Center(
                      child: CommonImage(
                    imageSrc: AppIcons.logo,
                    height: 240,
                    width: 160,
                    imageType: ImageType.svg,
                  )),
                   CommonText(
                    text: "BUBBLY".tr,
                    fontSize: 64,
                    top: 40,
                    style: true,
                    color: AppColors.white,
                  ).center,
                   CommonText(
                    text: "Relieving Social Fun".tr,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ).center,
                  50.height,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          languageController.changeLanguage("en", "US");

                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color:PrefsHelper.localizationCountryCode=="US"
                                      ? AppColors.white
                                      : AppColors.transparent)),
                          margin: const EdgeInsets.only(right: 12),
                          child: Column(
                            children: [
                              CommonImage(
                                imageSrc: AppIcons.usFlags,
                                imageType: ImageType.svg,
                                width: 42,
                                height: 30,
                              ),
                              const CommonText(
                                text: AppString.english,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white,
                                top: 6,
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          languageController.changeLanguage("zh-cn", "CN");
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: PrefsHelper.localizationCountryCode=="CN"
                                      ? AppColors.white
                                      : AppColors.transparent)),
                          child: Column(
                            children: [
                              CommonImage(
                                imageSrc: AppIcons.chinaFlags,
                                imageType: ImageType.svg,
                                width: 42,
                                height: 30,
                              ),
                               CommonText(
                                text: "chinese".tr,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white,
                                top: 6,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  30.height,
                  CommonButton(
                    titleText: "Register".tr,
                    buttonColor: AppColors.white,
                    titleColor: AppColors.primaryColor,
                    onTap: () => Get.toNamed(AppRoutes.marketingScreen),
                  ),
                  24.height,
                  CommonButton(
                    titleText:"Login".tr,
                    borderColor: AppColors.white,
                    titleColor: AppColors.white,
                    onTap: () => Get.toNamed(AppRoutes.signIn),
                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
