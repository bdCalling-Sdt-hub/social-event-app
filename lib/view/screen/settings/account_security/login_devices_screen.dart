import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

class LoginDevicesScreen extends StatelessWidget {
  const LoginDevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.loginDevices),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CommonImage(
              imageSrc: AppImages.devices,
              imageType: ImageType.png,
              height: 76,
              width: 150,
            ).center,
            CommonText(
              text: AppString.loginDevices,
              fontSize: 24,
              top: 20,
              bottom: 20,
              fontWeight: FontWeight.bold,
            ).center,
            CommonText(
              text: AppString.loginDevicesDetails,
              fontSize: 15,
              maxLines: 5,
              bottom: 20,
              fontWeight: FontWeight.w400,
            ).center,
            ListView.builder(
              itemCount: 5,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffE4F7F3),
                      borderRadius: BorderRadius.circular(16)),
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CommonText(
                            text: AppString.deviceName,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          CommonText(
                            text: index == 0
                                ? AppString.currentDevice
                                : "Last Login:May 14, 2014 29:10",
                            fontSize: 12,
                            top: 4,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      const Spacer(),
                      if (index != 0)
                        TextButton(
                            onPressed: () {},
                            child: CommonText(
                              text: AppString.logOut,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ))
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
