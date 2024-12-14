import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';

import '../../../component/text/common_text.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xffE4F7F3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonImage(
                imageSrc: AppImages.event1,
                imageType: ImageType.png,
                width: 92,
                height: 92,
              ),
              8.width,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    5.height,
                    const CommonText(
                      text: "Event Name Here",
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    5.height,
                    const Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 16,
                          color: AppColors.black,
                        ),
                        Flexible(
                          child: CommonText(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black,
                              text:
                                  "105 Yandang Road, Huangpu District, Shanghai"),
                        ),
                      ],
                    ),
                    5.height,
                    const Row(
                      children: [
                        Icon(
                          Icons.date_range,
                          size: 16,
                          color: AppColors.black,
                        ),
                        Flexible(
                          child: CommonText(
                            text: "September 30, 2023",
                            color: AppColors.black,
                            fontSize: 10,
                            left: 6,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    5.height,
                    const Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: AppColors.black,
                        ),
                        Flexible(
                          child: CommonText(
                            text: "09:00 AM",
                            fontSize: 10,
                            left: 6,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          Icons.file_upload_outlined,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          Icons.person_add_alt,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          Icons.favorite_border,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  40.height,
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.near_me_outlined,
                        size: 16,
                        color: AppColors.black,
                      ),
                      CommonText(
                        text: "40m",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                        left: 2,
                        right: 5,
                      ),
                    ],
                  ).end,
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
