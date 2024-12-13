import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

import '../../../../../controllers/message/call/audio_call_controller.dart';


class AudioCall extends StatelessWidget {
  const AudioCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: GetBuilder<AudioCallController>(
        builder: (controller) => Column(
          children: [
            150.height,
            CommonImage(
              imageSrc: AppImages.profile7,
              imageType: ImageType.png,
              width: 200,
              height: 200,
              borderRadius: 50,
            ).center,
            190.height,
            const CommonText(
              text: "Du Jianhan",
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
            CommonText(
              text: controller.isRinging ? AppString.calling : "00:53",
              fontSize: 16,
              top: 20,
              bottom: 64,
              color: AppColors.white,
              fontWeight: FontWeight.w400,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(AppColors.white)),
                    onPressed: controller.changeMute,
                    icon: Icon(
                      controller.isMic ? Icons.mic : Icons.mic_off,
                    )),
                30.width,
                IconButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(AppColors.white)),
                    onPressed: controller.changeVideo,
                    icon: Icon(
                      controller.isVideo
                          ? Icons.videocam_outlined
                          : Icons.videocam_off_outlined,
                    )),
                30.width,
                IconButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(AppColors.white)),
                    onPressed: controller.changeSound,
                    icon: Icon(
                      controller.isSound
                          ? Icons.volume_down_outlined
                          : Icons.volume_off,
                    )),
              ],
            ),
            36.height,

            IconButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.red)),
                onPressed: () {},
                icon: const Icon(
                  Icons.call_end,
                  color: AppColors.white,
                )),
            // if (controller.isRinging)
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Column(
            //         children: [
            //           IconButton(
            //               style: ButtonStyle(
            //                   backgroundColor: WidgetStateProperty.all(
            //                       AppColors.primaryColor)),
            //               onPressed: controller.changeRinging,
            //               icon: const Icon(
            //                 Icons.call_outlined,
            //                 color: AppColors.white,
            //               )),
            //           const CommonText(
            //             text: AppString.accept,
            //             color: AppColors.white,
            //           ),
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           IconButton(
            //               style: ButtonStyle(
            //                   backgroundColor: WidgetStateProperty.all(
            //                       AppColors.primaryColor)),
            //               onPressed: () => Get.back(),
            //               icon: CommonImage(
            //                 imageSrc: AppIcons.decline,
            //                 imageType: ImageType.svg,
            //               )),
            //           const CommonText(
            //             text: AppString.reject,
            //             color: AppColors.white,
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
          ],
        ),
      ),
    );
  }
}
