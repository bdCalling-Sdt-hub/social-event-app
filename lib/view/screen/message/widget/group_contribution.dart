import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

class Contribution extends StatelessWidget {
  const Contribution({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.height,
        CommonImage(
          imageSrc: AppImages.groupContribution,
          imageType: ImageType.png,
          height: 130,
          width: 130,
          borderRadius: 50,
        ).center,
        const CommonText(
          text: "Group Name",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
         CommonText(
          text: "12 ${AppString.members}",
          fontSize: 12,
          top: 10,
          bottom: 10,
          fontWeight: FontWeight.w400,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            5,
            (index) {
              if (index == 0) {
                return SizedBox(
                  height: 100,
                  width: 64,
                  child: Column(
                    children: [
                      const CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          radius: 24,
                          child: Icon(
                            CupertinoIcons.person_add,
                            color: AppColors.white,
                          )),
                      CommonText(
                        text: AppString.addMember,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        maxLines: 2,
                        top: 4,
                      )
                    ],
                  ),
                );
              }
              if (index == 4) {
                return SizedBox(
                  height: 80,
                  width: 64,
                  child: Column(
                    children: [
                      const CircleAvatar(
                          backgroundColor: Color(0xffE4F7F3),
                          radius: 24,
                          child: Icon(
                            CupertinoIcons.person_2,
                            color: AppColors.primaryColor,
                          )),
                      CommonText(
                        text: AppString.viewAll,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        maxLines: 2,
                        top: 4,
                      )
                    ],
                  ),
                );
              }
              return SizedBox(
                height: 80,
                width: 64,
                child: Column(
                  children: [
                    CommonImage(
                      imageSrc: AppImages.image1,
                      imageType: ImageType.png,
                      height: 48,
                      width: 48,
                      borderRadius: 50,
                    ),
                    const CommonText(
                      text: "Naimul",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
