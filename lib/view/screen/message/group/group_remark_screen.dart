import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text_field/common_text_field.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

class GroupRemarkScreen extends StatelessWidget {
  const GroupRemarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
          text: AppString.groupRemark,
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
              text: AppString.groupRemarkDetails,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              maxLines: 3,
              bottom: 60,
            ),
            CommonTextField(
              labelText: AppString.groupRemark,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CommonImage(
                  imageSrc: AppImages.remark,
                  imageType: ImageType.png,
                ),
              ),
            ),
            const CommonText(
              text: AppString.groupNameWorkEnter,
              fontSize: 18,
              top: 6,
              fontWeight: FontWeight.w400,
            ).start
          ],
        ),
      ),
    );
  }
}
