import 'package:flutter/material.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/view/component/text/common_text.dart';

class ItemWithToggle extends StatefulWidget {
  const ItemWithToggle({super.key});

  @override
  State<ItemWithToggle> createState() => _ItemWithToggleState();
}

class _ItemWithToggleState extends State<ItemWithToggle> {

  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),

      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 1),
                spreadRadius: 0
            )
          ]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CommonText(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              text: "Login via Voice Print"),

          Switch(
              value: isSwitched,
              activeColor: AppColors.primaryColor,
              inactiveThumbColor: Colors.grey,
              onChanged: (value){
                setState(() {
                  isSwitched=value;
                });

              })




        ],
      ),
    );
  }
}
