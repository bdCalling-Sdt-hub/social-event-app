import 'package:flutter/material.dart';
import 'package:social_event/controllers/payment/buy_ticket_controller.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

Widget paymentOptionCard(item) {
  return Container(
    margin: const EdgeInsets.only(bottom: 12),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: const Color(0xffE4F7F3),
        borderRadius: BorderRadius.circular(12)),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.white,
          radius: 24,
          child: CommonImage(
            imageSrc: item['image'],
            imageType: ImageType.png,
            height: 24,
            width: 24,
          ),
        ),
        CommonText(
          text: item['name'],
          fontSize: 16,
          left: 16,
        ),
        const Spacer(),
        Radio(
          value: item['name'],
          activeColor: AppColors.primaryColor,
          groupValue: BuyTicketController.instance.value,
          onChanged: BuyTicketController.instance.changeValue,
        )
      ],
    ),
  );
}
