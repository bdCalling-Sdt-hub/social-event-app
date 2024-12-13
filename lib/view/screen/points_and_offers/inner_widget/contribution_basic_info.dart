import 'package:flutter/material.dart';

import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/view/screen/points_and_offers/inner_widget/people_item.dart';

import '../../../../utils/app_colors.dart';
import '../../../component/image/common_image.dart';
import '../../../component/text/common_text.dart';

class ContributionBasicInfo extends StatelessWidget {
   ContributionBasicInfo({super.key, required this.image, required this.title, required this.members});

  String image;
  String title;
  String members;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        CommonImage(
            height: 130,
            width: 130,
            imageType: ImageType.png,
            imageSrc: image),
        CommonText(
            top: 20,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            text: title),
        CommonText(
            top: 10,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            text: members),
        15.height,
        Card(
          elevation: 0.7,
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return peopleItem();
                  }),
            ),
          ),
        ),
      ]


    );
  }
}
