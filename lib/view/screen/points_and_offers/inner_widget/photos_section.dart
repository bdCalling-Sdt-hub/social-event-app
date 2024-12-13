import 'package:flutter/material.dart';

import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';

class PhotosSection extends StatelessWidget {
  const PhotosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          30.height,
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisExtent: 120,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.80),
              itemBuilder: (context, index) {
                return CommonImage(
                    imageType: ImageType.png,
                    imageSrc: AppImages.event2);
              })
        ],
      ),
    );
  }
}
