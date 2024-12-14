import 'package:flutter/material.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_icons.dart';
import 'package:social_event/view/component/text/common_text.dart';
import '../../../../helpers/my_extension.dart';

import 'package:get/get.dart';

import '../../../../helpers/app_routes.dart';
import '../../../component/image/common_image.dart';
import '../../../component/other_widgets/common_loader.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        // if (PrefsHelper.isLogIn) {
        //   if (PrefsHelper.myRole == 'consultant') {
        //     Get.offAllNamed(AppRoutes.doctorHome);
        //   } else {
        //     Get.offAllNamed(AppRoutes.patientsHome);
        //   }
        // } else {
        Get.toNamed(AppRoutes.onboarding);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Stack(
              children: [
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
                  style: true,
                  top: 80,
                  color: const Color(0xff08A496),
                ).center,
              ],
            ),
            const Spacer(),
            const CommonLoader(),
            20.height,
          ],
        ),
      ),
    );
  }
}
