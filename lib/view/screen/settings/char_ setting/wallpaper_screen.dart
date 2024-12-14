import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/controllers/setting/chat_setting_controller.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/view/component/image/common_image.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

class WallpaperScreen extends StatelessWidget {
  const WallpaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.chats),
      ),
      body: GetBuilder<ChatSettingController>(
        builder: (controller) => GridView.builder(
          itemCount: controller.wallpapers.length,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            print(
                "aaa ${controller.wallpapers[index] == controller.selectedWallpaper}");

            return Stack(
              children: [
                CommonImage(
                  imageSrc: controller.wallpapers[index],
                  imageType: ImageType.png,
                  height: double.infinity,
                  width: double.infinity,
                  borderRadius: 0,
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: InkWell(
                      onTap: () => controller
                          .changeWallpaper(controller.wallpapers[index]),
                      child: Container(
                          height: 26,
                          decoration: BoxDecoration(
                              color: AppColors.black.withOpacity(0.4)),
                          child: controller.wallpapers[index] ==
                                  controller.selectedWallpaper
                              ? const Icon(
                                  Icons.done,
                                  color: AppColors.white,
                                )
                              : CommonText(
                                  text: AppString.get,
                                  color: AppColors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ).center),
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
