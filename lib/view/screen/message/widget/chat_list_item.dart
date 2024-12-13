import 'package:flutter/material.dart';

import 'package:social_event/utils/app_images.dart';
import '../../../../../helpers/my_extension.dart';
import '../../../../../models/chat_list_model.dart';
import '../../../../../utils/app_colors.dart';
import '../../../component/image/common_image.dart';
import '../../../component/text/common_text.dart';

Widget chatListItem({required ChatListModel item}) {
  return Container(
    padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
    decoration: const BoxDecoration(color: AppColors.transparent),
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 35,
              child: ClipOval(
                child: CommonImage(
                  imageSrc: AppImages.image1,
                  imageType: ImageType.png,
                  defaultImage: AppImages.profile,
                  height: 70,
                  width: 70,
                ),
              ),
            ),
            12.width,
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: item.name,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
                CommonText(
                  text: item.message,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ],
            )),
            CommonText(text: item.time)
          ],
        ),
        16.height,
        const Divider(
          height: 1,
        )
      ],
    ),
  );
}
