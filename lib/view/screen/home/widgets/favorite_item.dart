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
      height: 110,
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
                    const CommonText(
                      text: "Event Name Here",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 16,
                        ),
                        Flexible(
                          child: CommonText(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              text:
                                  "105 Yandang Road, Huangpu District, Shanghai"),
                        ),
                      ],
                    ),
                    4.height,
                    const Row(
                      children: [
                        Icon(
                          Icons.date_range,
                          size: 16,
                        ),
                        Flexible(
                          child: CommonText(
                            text: "September 30, 2023",
                            fontSize: 12,
                            left: 6,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    4.height,
                    const Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16,
                        ),
                        Flexible(
                          child: CommonText(
                            text: "09:00 AM",
                            fontSize: 12,
                            left: 6,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  30.height,
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.near_me_outlined,
                        size: 16,
                      ),
                      CommonText(
                        text: "40m",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        left: 8,
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
