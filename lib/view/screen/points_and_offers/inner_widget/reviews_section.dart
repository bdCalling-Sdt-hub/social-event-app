import 'package:flutter/material.dart';

import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/rating_bar/rating_bar.dart';
import 'package:social_event/view/component/text/common_text.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       25.height,

        SizedBox(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index){
            return reviewsItem();
          }),
        )
      ],
    );
  }

  Widget reviewsItem(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.normalTeal,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Row(
            children: [
              CommonImage(
                height: 65,
                  width: 65,
                  borderRadius: 50,
                  imageType: ImageType.png,
                  imageSrc:AppImages.event1 ),
              10.width,
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CommonText(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      text: "John Doe"),
                  
                  Row(
                    children: [
                      ratingBar(itemSize: 17, ignoreGesture: true),
                      
                      const CommonText(
                          left: 3,
                          fontWeight: FontWeight.w400,
                          text: "5.0")
                    ],
                  )
                ],
              ),
              
              const Spacer(),
              
              const CommonText(
                  color: AppColors.textFiledColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  text: "2 Days Ago")
            ],
          ),

          const CommonText(
            top: 10,
              textAlign: TextAlign.start,
              maxLines: 3,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.")
        ],
      ),
    );
  }
}
