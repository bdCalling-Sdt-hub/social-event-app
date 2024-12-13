import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import '../../../../controllers/common_controller/profile/profile_controller.dart';
import '../../../../helpers/app_routes.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_string.dart';
import '../../../component/image/common_image.dart';
import '../../../component/other_widgets/item.dart';
import '../../../component/pop_up/common_pop_menu.dart';
import '../../../component/text/common_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProfileController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              children: [
                40.height,

                //========================Upload Image Section=================
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.arrow_back,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 85,
                            backgroundColor: AppColors.black,
                            child: ClipOval(
                              child: controller.image != null
                                  ? Image.file(
                                      File(controller.image!),
                                      width: 170,
                                      height: 170,
                                      fit: BoxFit.fill,
                                    )
                                  : CommonImage(
                                      imageSrc: AppImages.image1,
                                      imageType: ImageType.png,
                                      height: 170,
                                      width: 170,
                                    ),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            left: Get.width * 0.53,
                            child: IconButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStateColor.resolveWith(
                                  (states) => AppColors.primaryColor,
                                )),
                                onPressed: controller.getProfileImage,
                                icon: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                )))
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle),
                      child: const Icon(color: AppColors.white, Icons.qr_code),
                    )
                  ],
                ),

                const CommonText(
                  text: "Naimul Hassan",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  top: 10,
                  bottom: 10,
                ),

                const CommonText(
                  text: "+86 234 5678900",
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  bottom: 30,
                ),

                // ================================All Item section==================
                Item(
                  icon: Icons.group,
                  title: AppString.myGroups,
                  onTap: () => Get.toNamed(AppRoutes.myGroup),
                ),
                Item(
                  icon: Icons.event,
                  title: AppString.myFavouriteEvents,
                  onTap: () => Get.toNamed(AppRoutes.myFavoriteEvent),
                ),
                Item(
                  icon: Icons.article_outlined,
                  title: AppString.myArticles,
                  onTap: () => Get.toNamed(AppRoutes.editProfile),
                ),
                Item(
                  icon: Icons.shopping_cart,
                  title: AppString.pointsOffers,
                  onTap: () => Get.toNamed(AppRoutes.pointAndOffers),
                ),
                Item(
                  icon: Icons.emoji_emotions,
                  title: AppString.stickerGallery,
                  onTap: () => Get.toNamed(AppRoutes.editProfile),
                ),

                Item(
                  icon: Icons.settings,
                  title: AppString.settings,
                  onTap: () => Get.toNamed(AppRoutes.setting_screen),
                ),

                Item(
                  icon: Icons.logout,
                  title: AppString.logOut,
                  onTap: () => logOutPopUp(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
