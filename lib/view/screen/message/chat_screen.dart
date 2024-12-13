import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/utils/app_colors.dart';
import '../../../../helpers/app_routes.dart';
import '../../../../helpers/my_extension.dart';
import '../../../../models/api_response_model.dart';
import '../../../../models/chat_list_model.dart';
import '../../../../utils/app_string.dart';
import '../../../controllers/message/chat_controller.dart';
import '../../component/bottom_nav_bar/common_bottom_bar.dart';
import '../../component/other_widgets/common_loader.dart';
import '../../component/screen/error_screen.dart';
import '../../component/text/common_text.dart';

import 'widget/chat_list_item.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<ChatController>(
          builder: (controller) => switch (controller.status) {
            Status.loading => const CommonLoader(),
            Status.error =>
              ErrorScreen(onTap: ChatController.instance.getChatRepo),
            Status.completed => Padding(
                padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CommonText(
                              text: AppString.chats,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                            const Spacer(),
                            const InkWell(
                                child: Icon(
                              Icons.person_add_alt,
                              color: AppColors.primaryColor,
                            )),
                            12.width,
                            InkWell(
                                onTap: () => Get.toNamed(AppRoutes.profile),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: AppColors.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: const EdgeInsets.all(4.0),
                                  child: const Icon(
                                    Icons.settings,
                                    color: AppColors.white,
                                  ),
                                )),
                          ],
                        ),
                        if (!controller.groupExpanded)
                          AnimatedContainer(
                            height: 300,
                            duration: const Duration(seconds: 1),
                            child: ListView.builder(
                              itemCount: controller.chats.length,
                              padding: const EdgeInsets.only(top: 16),
                              itemBuilder: (context, index) {
                                ChatListModel item = controller.chats[index];
                                return GestureDetector(
                                  onTap: () => Get.toNamed(AppRoutes.message,
                                      parameters: {
                                        "chatId": "",
                                        "name": item.name,
                                        "image": item.image,
                                      }),
                                  child: chatListItem(
                                    item: controller.chats[index],
                                  ),
                                );
                              },
                            ),
                          )
                      ],
                    ),
                    12.height,
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CommonText(
                                text: AppString.groups,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                              const Spacer(),
                              InkWell(
                                  onTap: () =>
                                      controller.changeGroupExpanded(false),
                                  child: const Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: AppColors.primaryColor,
                                  )),
                              12.width,
                              const InkWell(
                                  // onTap: controller.changeJoin,
                                  child: Icon(
                                Icons.person_add_alt,
                                color: AppColors.primaryColor,
                              )),
                              12.width,
                              InkWell(
                                  onTap: () =>
                                      controller.changeGroupExpanded(true),
                                  child: const Icon(
                                    Icons.keyboard_arrow_up,
                                    color: AppColors.primaryColor,
                                  ))
                            ],
                          ),
                          Expanded(
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeOutQuart,
                              child: ListView.builder(
                                itemCount: controller.groupChats.length,
                                padding: const EdgeInsets.only(top: 16),
                                itemBuilder: (context, index) {
                                  ChatListModel item =
                                      controller.groupChats[index];
                                  return GestureDetector(
                                    onTap: () => Get.toNamed(AppRoutes.message,
                                        parameters: {
                                          "chatId": "",
                                          "name": item.name,
                                          "type": "group",
                                          "image": item.image,
                                        }),
                                    child: chatListItem(
                                      item: controller.groupChats[index],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          },
        ),
      ),
      bottomNavigationBar: const CommonBottomNavBar(
        currentIndex: 4,
      ),
    );
  }
}
