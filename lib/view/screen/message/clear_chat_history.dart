import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_icons.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/screen/message/widget/bottom_sheet.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/text/common_text.dart';

class ClearChatHistory extends StatelessWidget {
  const ClearChatHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
          text: AppString.clearChatHistory,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonImage(
              imageSrc: AppIcons.clearChat,
              imageType: ImageType.svg,
              height: 136,
              width: 150,
            ).center,
            const CommonText(
              text: AppString.clearChatHistory,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            const CommonText(
              text: AppString.clearChatDetails,
              fontWeight: FontWeight.w400,
              maxLines: 5,
              fontSize: 15,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CommonButton(
          titleText: AppString.clearChat,
          onTap: () => successBottomSheet(AppString.chatHistoryCleared),
        ),
      ),
    );
  }
}
