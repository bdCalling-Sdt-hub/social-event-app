import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/utils/app_colors.dart';

import '../../../../../../controllers/common_controller/profile/profile_controller.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, this.takeImage = false});

  final bool takeImage;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) => Stack(
        clipBehavior: Clip.none,
        children: [
          InkWell(
            onTap: ProfileController.instance.getProfileImage,
            child: CircleAvatar(
              radius: 70,
              backgroundColor: const Color(0xffE4F7F3),
              child: ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffE4F7F3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(0, 2),
                        blurRadius: 6,
                        spreadRadius: 1, // Light spread
                      ),
                    ],
                  ),
                  child: ProfileController.instance.image != null
                      ? Image.file(
                          File(
                            ProfileController.instance.image!,
                          ),
                          fit: BoxFit.fill,
                          height: 130,
                          width: 130,
                        )
                      : const Icon(
                          Icons.camera_alt_outlined,
                          color: Color.fromRGBO(83, 209, 185, 1),
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
