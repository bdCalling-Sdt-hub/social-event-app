import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

class SelectOrganizer extends StatelessWidget {
  const SelectOrganizer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.white),
        title:  CommonText(
          text:"Select People".tr,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) => Column(
          children: [
            Row(
              children: [
                CommonImage(
                  imageSrc: AppImages.image1,
                  imageType: ImageType.png,
                  height: 48,
                  width: 48,
                ),
                const CommonText(
                  text: "Du Jianhan",
                  left: 12,
                )
              ],
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
