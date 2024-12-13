import 'package:flutter/material.dart';

import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/view/component/text/common_text.dart';

resetAndDeletBottomsheet(BuildContext context, {title, firtsOntap, lastOntap}) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.primaryColor),
                child: const Icon(
                  size: 40,
                  Icons.warning_amber,
                  color: AppColors.white,
                ),
              ),
              30.height,
              CommonText(
                  maxLines: 3,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  text: title),
              30.height,
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    tapButton(
                        title: "Cancel",
                        textClr: AppColors.primaryColor,
                        bgClr: AppColors.white,
                        ontap: firtsOntap),
                    10.width,
                    tapButton(
                        title: "Delete",
                        textClr: AppColors.white,
                        bgClr: AppColors.primaryColor,
                        ontap: lastOntap),
                  ],
                ),
              )
            ],
          ),
        );
      });
}

Widget tapButton({ontap, title, textClr, bgClr}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      width: 170,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgClr,
          border: Border.all(color: AppColors.primaryColor, width: 1)),
      child: Center(
        child: CommonText(fontSize: 22, color: textClr, text: title),
      ),
    ),
  );
}
