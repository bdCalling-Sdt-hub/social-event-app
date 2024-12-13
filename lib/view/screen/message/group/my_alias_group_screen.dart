import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

class MyAliasGroupScreen extends StatelessWidget {
  const MyAliasGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
          text: AppString.myAliasInGroup,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CommonText(
              text: AppString.myAliasGroupDetails,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              maxLines: 3,
              bottom: 60,
            ),
            const Divider(),
            Row(
              children: [
                CommonImage(
                  imageSrc: AppImages.image3,
                  imageType: ImageType.png,
                  height: 48,
                  width: 52,
                ),
                12.width,
                const CommonText(
                  text: "Alica Mo@Edsenses",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.clear,
                      color: AppColors.primaryColor,
                    ))
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
