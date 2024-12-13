import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/text/common_text.dart';


 customBottomsheet(BuildContext context,{title, ontap}){
   showModalBottomSheet(
      context: context,
      builder: (context){
        return SizedBox(
          width: double.infinity,
          height: 260,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor
                ),
                child: const Icon(
                  size: 45,
                  Icons.done, color: AppColors.white,),
              ),
              
              30.height,
              
              CommonText(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  text: title),
              
              30.height,
              Padding(
                padding:  const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: InkWell(
                    onTap: ontap,
                    child: const CommonButton(titleText: "Done")),
              )
            
            ],
          ),
        );
      });
}