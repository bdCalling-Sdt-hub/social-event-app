import 'package:flutter/material.dart';

import 'package:social_event/helpers/my_extension.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

class VerifyMyVoice extends StatelessWidget {
  const VerifyMyVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.verifyMyVoice),
      ),


      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20),
        child: Column(

          children: [
            20.height,
            const CommonText(
                maxLines: 2,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                text: AppString.verifyMyVoiceDes),
            const CommonText(
                maxLines: 2,
                fontSize: 30,

                top: 20,
                fontWeight: FontWeight.w700,
                text: "93872056"),
            
            
            450.height,
            
            const CommonText(

              fontSize: 17,
                bottom: 10,
                fontWeight: FontWeight.w500,
                color: AppColors.textFiledColor,
                text: AppString.holdToTalk),
            
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle
              ),
              child: const Icon(
                size: 45,
                Icons.mic_rounded, color: AppColors.white,),
            )
          ],
        ),
      ),

    );
  }
}
