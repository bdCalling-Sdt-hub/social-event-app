import 'package:flutter/material.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/screen/message/widget/write_message.dart';
import '../../../../helpers/my_extension.dart';

import 'package:get/get.dart';
import '../../../../models/chat_message_model.dart';
import '../../../controllers/message/message_controller.dart';
import '../../component/image/common_image.dart';
import '../../component/text/common_text.dart';
import 'widget/chat_bubble_message.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  String chatId = Get.parameters["chatId"] ?? "";
  String name = Get.parameters["name"] ?? "";
  String type = Get.parameters["type"] ?? "";
  String image = Get.parameters["image"] ?? "";

  @override
  void initState() {
    MessageController.instance.name = name;
    MessageController.instance.chatId = chatId;
    MessageController.instance.getMessageRepo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessageController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          leadingWidth: 40,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.transparent,
                child: ClipOval(
                  child: CommonImage(
                    imageSrc: AppImages.image1,
                    imageType: ImageType.png,
                    defaultImage: AppImages.profile,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              12.width,
              CommonText(
                text: name,
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: AppColors.white,
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  if (type == "group") {
                    Get.toNamed(AppRoutes.groupChatInfo);
                    return;
                  }
                  Get.toNamed(AppRoutes.chatInfo);
                },
                icon: const Icon(Icons.more_horiz)),
            IconButton(
                onPressed: () => Get.toNamed(AppRoutes.audioCall),
                icon: const Icon(Icons.call)),
            IconButton(
                onPressed: () => Get.toNamed(AppRoutes.videoCall),
                icon: const Icon(Icons.videocam_outlined))
          ],
        ),
        body: Column(
          children: [
            controller.isLoading
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                    child: ListView.builder(
                        reverse: true,
                        controller: controller.scrollController,
                        itemCount: controller.isMoreLoading
                            ? controller.messages.length + 1
                            : controller.messages.length,
                        itemBuilder: (BuildContext context, int index) {
                          if (index < controller.messages.length) {
                            ChatMessageModel message =
                                controller.messages[index];
                            return ChatBubbleMessage(
                              index: index,
                              image: message.image,
                              audio: message.audio,
                              isNotice: message.isNotice,
                              tatLong: message.tatLong,
                              time: message.time,
                              text: message.text,
                              isMe: message.isMe,
                              onTap: () {},
                            );
                          } else {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                        }),
                  ),
            writeMessage()
          ],
        ),
      );
    });
  }
}
