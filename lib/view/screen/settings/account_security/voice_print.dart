import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/item_with_toggle/item_with_toggle.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/settings/inner_widget/reset_delet_voiceprint_bottomsheet.dart';
import 'package:social_event/view/screen/settings/inner_widget/settings_item_button.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';

class VoicePrint extends StatelessWidget {
  const VoicePrint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.voicePrint),
      ),
      
      
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            30.height,

            CommonImage(
              height: 200,
                width: 200,
                imageType: ImageType.png,
                imageSrc: AppImages.voice_print),
            
            const CommonText(
                top: 20,
                fontWeight: FontWeight.w700,
                fontSize: 26,
                text: AppString.voicePrint),

            40.height,


            const ItemWithToggle(),

            settingsItemButton(
                ontap: (){
                  resetAndDeletBottomsheet(context, title: "Are you sure you want to reset this voice print?", firtsOntap: ()=>Get.back(), lastOntap: ()=>Get.back());
                },
                title: AppString.resetAndDelete),
            settingsItemButton(
                ontap: (){
                  Get.toNamed(AppRoutes.verify_my_voice);
                },
                title: AppString.verifyMyVoice),

          ],
        ),
      ),
    );
  }
}
