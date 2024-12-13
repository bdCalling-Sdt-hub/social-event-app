import 'package:flutter/material.dart';

import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

class EmergencyContactNumberItem extends StatelessWidget {
  const EmergencyContactNumberItem(
      {super.key,
        required this.image,
        required this.name,
      });

  final String image;

  final String name;



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 110,
          padding: const EdgeInsets.all(10),

          decoration: BoxDecoration(
              color: const Color(0xffE4F7F3),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              CommonImage(
                imageSrc: image,
                imageType: ImageType.png,
                borderRadius: 50,
                height: 64,
                width: 64,
              ),
              CommonText(
                text: name,
                top: 10,
                bottom: 4,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),

            ],
          ),
        ),
        Positioned(
          right: 0,
            top: 0,
            
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                size: 18,
                Icons.clear, color: AppColors.white,),
            ))
      ],
    );
  }
}