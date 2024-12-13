import 'package:flutter/material.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

class Organizer extends StatelessWidget {
  const Organizer(
      {super.key,
      required this.image,
      required this.name,
      required this.title});

  final String image;

  final String name;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 12),
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
          CommonText(
            text: title,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
