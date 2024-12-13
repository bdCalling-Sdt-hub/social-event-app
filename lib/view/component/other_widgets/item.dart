import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';
import '../../../utils/app_colors.dart';
import '../text/common_text.dart';

class Item extends StatelessWidget {
  const Item(
      {super.key,
      required this.title,
      this.subTitle = "",
      this.disableDivider = false,
      this.onTap,
      this.icon,
      this.color = AppColors.black,
      this.vertical = 6,
      this.horizontal = 15,
      this.disableIcon = false});

  final String title;
  final String subTitle;
  final IconData? icon;
  final bool disableDivider;
  final bool disableIcon;
  final VoidCallback? onTap;
  final Color color;
  final double vertical;
  final double horizontal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizontal, vertical: vertical),
        child: Column(
          children: [
            Row(
              children: [
                if (icon != null) Icon(icon),
                CommonText(
                  text: title,
                  color: color,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  left: 16,
                ),
                const Spacer(),
                if (subTitle.isNotEmpty)
                  CommonText(
                      color: AppColors.textFiledColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      text: subTitle),
                if (subTitle.isNotEmpty) 12.width,
                disableIcon
                    ? const SizedBox()
                    : const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                      ),
                12.width
              ],
            ),
            10.height,
            disableDivider
                ? const SizedBox()
                : const Divider(
                    color: Color(0xffEEEEEE),
                    indent: 2,
                    thickness: 2,
                  )
          ],
        ),
      ),
    );
  }
}

class ItemWithSwitch extends StatelessWidget {
  const ItemWithSwitch({
    super.key,
    required this.title,
    this.subTitle = "",
    this.disableDivider = false,
    required this.value,
    this.onTap,
    this.color = AppColors.black,
    this.vertical = 2,
    this.horizontal = 15,
  });

  final String title;
  final String subTitle;
  final bool disableDivider;
  final bool value;
  final VoidCallback? onTap;
  final Color color;
  final double vertical;
  final double horizontal;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CommonText(
                  text: title,
                  color: color,
                  fontWeight: FontWeight.w400,
                  maxLines: 2,
                  fontSize: 15,
                  textAlign: TextAlign.start,
                  left: 16,
                ).start,
              ),
              GestureDetector(
                onTap: onTap,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: 28,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: value
                          ? AppColors.primaryColor
                          : const Color(0xff909090),
                    ),
                  ),
                  child: AnimatedAlign(
                    duration: const Duration(milliseconds: 300),
                    alignment:
                        value ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: value
                            ? AppColors.primaryColor
                            : CupertinoColors.inactiveGray,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
              12.width
            ],
          ),
          if (subTitle.isNotEmpty)
            CommonText(
              text: subTitle,
              left: 16,
              maxLines: 2,
              textAlign: TextAlign.start,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.black.withOpacity(0.5),
            ).start,
          4.height,
          disableDivider
              ? const SizedBox()
              : const Divider(
                  color: Color(0xffEEEEEE),
                  indent: 2,
                  thickness: 2,
                )
        ],
      ),
    );
  }
}
