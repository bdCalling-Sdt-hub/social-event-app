import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../helpers/prefs_helper.dart';
import '../../../../models/chat_message_model.dart';
import '../../../../utils/app_images.dart';
import '../../../component/image/common_image.dart';
import '../../../component/text/common_text.dart';

class Discussion extends StatelessWidget {
  Discussion({super.key});

  List messages = [
    ChatMessageModel(
        time: DateTime.now(),
        text:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mollis nunc a molestie dictum. Mauris venenatis, felis scelerisque aliquet lacinia, nulla nisi venenatis odio, id blandit mauris ipsum id sapien.",
        image: PrefsHelper.myImage,
        isMe: true),
    ChatMessageModel(
        time: DateTime.now(),
        text:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mollis nunc a molestie dictum. Mauris venenatis, felis scelerisque aliquet lacinia, nulla nisi venenatis odio, id blandit mauris ipsum id sapien.",
        image: PrefsHelper.myImage,
        isMe: false),
    ChatMessageModel(
        time: DateTime.now(),
        text:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mollis nunc a molestie dictum. Mauris venenatis, felis scelerisque aliquet lacinia, nulla nisi venenatis odio, id blandit mauris ipsum id sapien.",
        tatLong: TatLong(latitude: 0, longitude: 0),
        image: PrefsHelper.myImage,
        isMe: true),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        padding: const EdgeInsets.only(top: 20),
        itemBuilder: (context, index) {
          ChatMessageModel message = messages[index];
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
        });
  }
}

class ChatBubbleMessage extends StatelessWidget {
  final DateTime time;
  final String text;
  final String audio;
  final String image;
  final bool isMe;
  final bool isEmoji;
  final int index;
  final int messageIndex;
  final TatLong? tatLong;

  final bool isNotice;
  final VoidCallback onTap;

  const ChatBubbleMessage({
    super.key,
    required this.time,
    required this.text,
    required this.image,
    required this.isMe,
    required this.onTap,
    this.isEmoji = false,
    this.index = 0,
    this.audio = '',
    this.messageIndex = 1,
    this.isNotice = false,
    this.tatLong,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (!isMe)
                          CommonImage(
                            imageSrc: AppImages.image3,
                            imageType: ImageType.png,
                            height: 48,
                            width: 48,
                          ),
                        Column(
                          children: [
                            const CommonText(
                              text: "Wu Siyu",
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                            CommonText(
                              text: "2 hours ago",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black.withOpacity(0.5),
                            )
                          ],
                        ),
                        if (isMe)
                          CommonImage(
                            imageSrc: AppImages.image3,
                            imageType: ImageType.png,
                            height: 48,
                            width: 48,
                          ),
                      ],
                    ),
                    GestureDetector(
                      onLongPress: () {
                        onTap();
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: isMe ? 30 : 0, right: !isMe ? 30 : 0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: CommonText(
                          maxLines: 10,
                          textAlign: TextAlign.left,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black.withOpacity(0.5),
                          text: text,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
