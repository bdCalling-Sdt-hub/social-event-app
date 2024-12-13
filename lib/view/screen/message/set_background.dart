import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/helpers/other_helper.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/text/common_text.dart';

class SetBackground extends StatefulWidget {
  const SetBackground({super.key});

  @override
  State<SetBackground> createState() => _SetBackgroundState();
}

class _SetBackgroundState extends State<SetBackground> {
  List backgroundList = [
    AppImages.defaultImage,
    AppImages.background1,
    AppImages.background2,
    AppImages.background3,
    AppImages.background4,
  ];

  String value = AppImages.defaultImage;

  changeBackground(item) {
    value = item;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
          text: AppString.background,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: backgroundList.length + 1,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 300,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              margin: const EdgeInsets.only(bottom: 60),
              child: DottedBorder(
                color: AppColors.primaryColor,
                strokeWidth: 1,
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                padding: const EdgeInsets.all(6),
                dashPattern: const [8],
                child: const IconButton(
                        onPressed: OtherHelper.openGallery,
                        icon: Icon(Icons.camera_alt_outlined))
                    .center,
              ),
            );
          }

          var item = backgroundList[index - 1];
          return InkWell(
            onTap: () => changeBackground(item),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: value == item
                        ? AppColors.primaryColor
                        : AppColors.transparent),
              ),
              child: Column(
                children: [
                  CommonImage(
                    imageSrc: item,
                    width: double.infinity,
                    imageType: ImageType.png,
                    height: 240,
                  ),
                  CommonText(
                    text: index == 1
                        ? AppString.defaul
                        : "${AppString.background} ${index + 2}",
                    fontSize: 15,
                    top: 8,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
