import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

Widget postArticle() {
  return Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: const Color(0xffE4F7F3),
        borderRadius: BorderRadius.circular(12)),
    child: Column(
      children: [
        Row(
          children: [
            CommonImage(
              imageSrc: AppImages.image3,
              imageType: ImageType.png,
              borderRadius: 50,
              height: 48,
              width: 50,
            ),
            const CommonText(
              text: AppString.sharePost,
              fontSize: 15,
              left: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xff909090),
            )
          ],
        ),
        10.height,
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () => Get.toNamed(AppRoutes.createArticle),
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.image_outlined),
                      CommonText(text: AppString.photo)
                    ],
                  ),
                ),
              ),
            ),
            20.width,
            Expanded(
              child: InkWell(
                onTap: () => Get.toNamed(AppRoutes.createArticle),
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.videocam_outlined),
                      CommonText(text: AppString.video)
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
