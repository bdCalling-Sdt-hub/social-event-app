import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_string.dart';
import '../../../component/image/common_image.dart';
import '../../../component/text/common_text.dart';

class BlockListScreen extends StatelessWidget {
  const BlockListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.white),
        title: CommonText(
          text: AppString.blockedList,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: 3,
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) => Column(
          children: [
            Row(
              children: [
                CommonImage(
                  imageSrc: AppImages.image1,
                  imageType: ImageType.png,
                  height: 48,
                  width: 48,
                ),
                const CommonText(
                  text: "Du Jianhan",
                  left: 12,
                ),
                const Spacer(),
                CommonText(
                  text: AppString.unblock,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                )
              ],
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
