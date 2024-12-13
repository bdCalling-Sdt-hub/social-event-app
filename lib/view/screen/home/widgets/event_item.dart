import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/text/common_text.dart';

import '../../../../utils/app_colors.dart';
import 'notification_bottom_sheet.dart';

class EventItem extends StatefulWidget {
  const EventItem({super.key});

  @override
  State<EventItem> createState() => _EventItemState();
}

class _EventItemState extends State<EventItem> {
  bool value = true;
  List list = [
    AppImages.image1,
    AppImages.image2,
    AppImages.image3,
    AppImages.image4,
    AppImages.image5,
    AppImages.image6,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffE4F7F3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CommonText(
                      text: "Event Name",
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
                            left: 3,
                            text: "105 Yandang Road.....",
                            color: AppColors.black,
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
                            fontWeight: FontWeight.w400,
                            left: 6,
                            color: AppColors.black,
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
                            text: "Attendee no(15)",
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            left: 6,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                    10.height,
                  ],
                ),
              ),
              Switch(
                value: value,
                activeTrackColor: AppColors.white,
                trackOutlineColor:
                    WidgetStateProperty.all(AppColors.primaryColor),
                thumbColor: WidgetStateProperty.all(AppColors.primaryColor),
                onChanged: (v) {
                  value = v;
                  setState(() {});
                },
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 10,
                child: Stack(
                  clipBehavior: Clip.none,
                  // Allows overflow for overlapping avatars
                  children: [
                    // Avatars
                    ...List.generate(list.length, (index) {
                      return Positioned(
                        left: index * 16.0, // Adjust spacing for overlap
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(
                                list[index]), // Replace with image URLs
                          ),
                        ),
                      );
                    }),
                    // "+15" Circle
                    Positioned(
                      left: list.length * 16.0, // Position for "+15" indicator
                      child: const SizedBox(
                        height: 24,
                        width: 24,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: AppColors.primaryColor,
                          child: CommonText(
                            text: '+15',
                            fontSize: 10,
                            color: AppColors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.primaryColor),
                child: const Icon(
                  CupertinoIcons.chat_bubble,
                  color: AppColors.white,
                ),
              ),
              InkWell(
                onTap: () => Get.toNamed(AppRoutes.createEvent,
                    parameters: {"isEdit": "edit"}),
                child: Container(
                  padding: const EdgeInsets.all(6),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.primaryColor),
                  child: const Icon(
                    Icons.edit,
                    color: AppColors.white,
                  ),
                ),
              ),
              InkWell(
                onTap: () => notificationBottomSheet(),
                child: Container(
                  padding: const EdgeInsets.all(6),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.primaryColor),
                  child: const Icon(
                    Icons.notifications_outlined,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
