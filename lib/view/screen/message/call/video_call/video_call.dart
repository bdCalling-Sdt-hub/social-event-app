import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../../../controllers/message/call/video_call_controller.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../../utils/app_images.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/text/common_text.dart';

class VideoCall extends StatelessWidget {
  const VideoCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<VideoCallController>(
        builder: (controller) => Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.videoBg), fit: BoxFit.fill)),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.all(24),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CommonText(
                          text: "Du Jianhan",
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                        ),
                        CommonText(
                          text: controller.isRinging
                              ? AppString.incomingCall
                              : "00:53",
                          fontSize: 16,
                          top: 20,
                          bottom: 64,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        if (!controller.isRinging)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                          AppColors.white)),
                                  onPressed: controller.changeMute,
                                  icon: Icon(
                                    controller.isMic
                                        ? Icons.mic
                                        : Icons.mic_off,
                                  )),
                              30.width,
                              IconButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                          AppColors.white)),
                                  onPressed: controller.changeVideo,
                                  icon: Icon(
                                    controller.isVideo
                                        ? Icons.videocam_outlined
                                        : Icons.videocam_off_outlined,
                                  )),
                              30.width,
                              IconButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                          AppColors.white)),
                                  onPressed: controller.changeSound,
                                  icon: Icon(
                                    controller.isSound
                                        ? Icons.volume_down_outlined
                                        : Icons.volume_off,
                                  )),
                            ],
                          ),
                        if (!controller.isRinging) 36.height,
                        if (!controller.isRinging)
                          IconButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all(Colors.red)),
                              onPressed: () => Get.back(),
                              icon: const Icon(
                                Icons.call_end,
                                color: AppColors.white,
                              )),
                        if (controller.isRinging)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStateProperty.all(
                                                  AppColors.primaryColor)),
                                      onPressed: controller.changeRinging,
                                      icon: const Icon(
                                        Icons.call_outlined,
                                        color: AppColors.white,
                                      )),
                                  const CommonText(
                                    text: AppString.accept,
                                    color: AppColors.white,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStateProperty.all(
                                                  AppColors.primaryColor)),
                                      onPressed: () => Get.back(),
                                      icon: CommonImage(
                                        imageSrc: AppIcons.decline,
                                        imageType: ImageType.svg,
                                      )),
                                  const CommonText(
                                    text: AppString.reject,
                                    color: AppColors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                      ],
                    ),
                  ).center,
                ),
                Positioned(
                  top: controller.dragVertical,
                  right: controller.dragHorizontal,
                  child: GestureDetector(
                    onPanUpdate: controller.onPanUpdate,
                    child: SizedBox(
                        width: 100,
                        height: 135,
                        child: CommonImage(
                          imageSrc: AppImages.localVideo,
                          imageType: ImageType.png,
                          height: 150,
                          width: 100,
                        )),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
