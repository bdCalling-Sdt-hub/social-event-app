import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../../controllers/setting/general_setting_controller.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/other_widgets/item.dart';
import '../../../component/text/common_text.dart';

class PhotosAndCallScreen extends StatelessWidget {
  const PhotosAndCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.photosVideosFilesAndPhoneCalls),
      ),
      body: GetBuilder<GeneralSettingController>(
        builder: (controller) => Column(
          children: [
            10.height,
            ItemWithSwitch(
              title: AppString.autoDownload,
              value: controller.isAutoDownload,
              subTitle: AppString.autoDownloadDetails,
              onTap: controller.changeAutoDownload,
            ),
            ItemWithSwitch(
              title: AppString.autoSavePhotos,
              value: controller.isPhoto,
              onTap: controller.changePhoto,
            ),
            ItemWithSwitch(
              title: AppString.autoSaveVideos,
              subTitle: AppString.autoSaveVideosDetails,
              value: controller.isVideo,
              onTap: controller.changeVideo,
            ),
            ItemWithSwitch(
              title: AppString.searchImagesInChats,
              subTitle: AppString.searchImagesInChatsDetails,
              value: controller.isSearch,
              onTap: controller.changeAutoSearch,
            ),
            ItemWithSwitch(
              title: AppString.autoplayOnMobileData,
              subTitle: AppString.autoplayOnMobileDataDetails,
              value: controller.isEnabling,
              onTap: controller.changeEnabling,
            ),
            ItemWithSwitch(
              title: AppString.useMobileDataForBetterVoiceCallQuality,
              subTitle: AppString.useMobileDataForBetterVoiceCallQualityDetails,
              value: controller.isQuality,
              onTap: controller.changeQuality,
            ),
          ],
        ),
      ),
    );
  }
}
