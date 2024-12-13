import 'package:flutter/material.dart';

import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import '../../../../../models/notification_model.dart';
import '../../../../../helpers/my_extension.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../component/text/common_text.dart';

class NotificationItem extends StatefulWidget {
  const NotificationItem({super.key, required this.item, this.unRead = false});

  final NotificationModel item;
  final bool unRead;

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isShow = !isShow;
        setState(() {});
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:
              widget.unRead ? const Color(0xffFFFFD0) : AppColors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const ClipOval(
              child: Icon(
                Icons.circle_notifications,
                color: AppColors.primaryColor,
                size: 36,
              ),
            ),
            16.width,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: CommonText(
                          text: widget.item.type,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          textAlign: TextAlign.start,
                          maxLines: 1,
                        ),
                      ),
                      CommonText(
                        text: widget.item.createdAt.checkTime,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.start,
                        color: AppColors.black,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  CommonText(
                    text: widget.item.message,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    maxLines: 2,
                    color: AppColors.black,
                    textAlign: TextAlign.start,
                    bottom: 10,
                    top: 4,
                  ),
                  if (isShow)
                    Row(
                      children: [
                        const Expanded(
                            child: CommonButton(
                          titleText: AppString.accept,
                          buttonHeight: 35,
                          buttonWidth: 100,
                        )),
                        20.width,
                        const Expanded(
                            child: CommonButton(
                          titleText: AppString.cancel,
                          buttonHeight: 35,
                          buttonWidth: 100,
                        ))
                      ],
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
