import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/artical/widgets/bottom_sheet.dart';

class PostItem extends StatefulWidget {
  const PostItem({super.key});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  bool isLike = false;

  changeLike() {
    isLike = !isLike;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CommonImage(
                imageSrc: AppImages.image3,
                imageType: ImageType.png,
                height: 48,
                width: 50,
              ),
              8.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CommonText(
                    text: "Wu Siyu",
                    fontSize: 13,
                    bottom: 4,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                  CommonText(
                    text: "${"Venue Name".tr} • Oct 10, 2023 • 09:00 AM",
                    fontSize: 10,
                    bottom: 4,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black.withOpacity(0.5),
                  ),
                  CommonText(
                    text: "${"Age Group".tr}: 4-6 •  ${"Category".tr}: Entertain",
                    fontSize: 10,
                    color: AppColors.black.withOpacity(0.5),
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              const Spacer(),
              CommonText(
                text: "2 hours ago",
                fontSize: 10,
                color: AppColors.black.withOpacity(0.5),
                fontWeight: FontWeight.w400,
              ),
              const IconButton(
                  onPressed: moreBottomSheet, icon: Icon(Icons.more_vert))
            ],
          ),
          CommonText(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mollis nunc a molestie dictum. Mauris venenatis, felis scelerisque aliquet lacinia, nulla nisi venenatis odio, id blandit mauris ipsum id sapien.",
            fontSize: 10,
            top: 6,
            color: AppColors.black.withOpacity(0.5),
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.start,
            maxLines: 3,
            left: 10,
            bottom: 6,
            right: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CommonImage(
                      imageSrc: AppImages.img1,
                      imageType: ImageType.png,
                      height: 390,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CommonImage(
                          imageSrc: AppImages.img2,
                          imageType: ImageType.png,
                          height: 195,
                          width: double.infinity,
                        ),
                        CommonImage(
                          imageSrc: AppImages.img3,
                          imageType: ImageType.png,
                          height: 195,
                          width: double.infinity,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              CommonImage(
                imageSrc: AppImages.img4,
                imageType: ImageType.png,
                height: 195,
                width: double.infinity,
              ),
              CommonImage(
                imageSrc: AppImages.img5,
                imageType: ImageType.png,
                height: 195,
                width: double.infinity,
              ),
            ],
          ),
          10.height,
          Row(
            children: [
              CommonText(
                text: "${"Liked by".tr} Wu Siyu ${"and".tr} 12 ${"others"}",
                color: AppColors.black.withOpacity(0.5),
                fontSize: 10,
                left: 10,
                fontWeight: FontWeight.w400,
              ),
              const Spacer(),
              CommonText(
                text: "12 ${"Comment".tr}",
                color: AppColors.black.withOpacity(0.5),
                fontSize: 10,
                right: 4,
                fontWeight: FontWeight.w400,
              ),
              CommonText(
                text: "• 4 ${"Share".tr}",
                color: AppColors.black.withOpacity(0.5),
                fontSize: 10,
                right: 10,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          4.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: changeLike,
                        icon: Icon(
                            isLike
                                ? Icons.thumb_up
                                : Icons.thumb_up_alt_outlined,
                            color: isLike ? Colors.blue : Colors.grey)),
                    CommonText(
                      text: "Like".tr,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black.withOpacity(0.5),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.messenger_outline)),
                    CommonText(
                      text: "Comment".tr,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black.withOpacity(0.5),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.ios_share_outlined)),
                    CommonText(
                      text: "Share".tr,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black.withOpacity(0.5),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
