import 'package:flutter/material.dart';

import 'package:social_event/helpers/my_extension.dart';

import '../../../models/notification_model.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/bottom_nav_bar/common_bottom_bar.dart';
import '../../component/text/common_text.dart';
import '../common_screen/notifications/widget/notification_item.dart';

class ScarchNotification extends StatelessWidget {
  const ScarchNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CommonText(
          text: AppString.notifications,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: Column(
        children: [
          const CommonText(
            text: "today",
            fontWeight: FontWeight.bold,
            left: 20,
          ).start,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: NotificationItem(
              item: NotificationModel(
                  id: "dfdf",
                  createdAt: DateTime.now(),
                  message: "fjdsfjds",
                  linkId: "fhdsfjdsf",
                  receiver: "dfjdsfjl",
                  role: "user",
                  type: "notification",
                  updatedAt: DateTime.now(),
                  v: 1),
              unRead: true,
            ),
          ),
          const CommonText(
            text: "Yesterday",
            fontWeight: FontWeight.bold,
            left: 20,
          ).start,
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              itemCount: 2,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return NotificationItem(
                  item: NotificationModel(
                      id: "dfdf",
                      createdAt: DateTime.now(),
                      message: "fjdsfjds",
                      linkId: "fhdsfjdsf",
                      receiver: "dfjdsfjl",
                      role: "user",
                      type: "notification",
                      updatedAt: DateTime.now(),
                      v: 1),
                  unRead: false,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CommonBottomNavBar(
        currentIndex: 1,
      ),
    );
  }
}
