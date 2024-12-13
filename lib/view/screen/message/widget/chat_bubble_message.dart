import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:social_event/view/component/map/google_map.dart';
import 'package:voice_message_package/voice_message_package.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../helpers/my_extension.dart';
import '../../../../models/chat_message_model.dart';
import '../../../component/text/common_text.dart';

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
          isNotice
              ? Center(
                  child: CommonText(
                  text: text,
                  maxLines: 1,
                  top: 8,
                  bottom: 8,
                  fontWeight: FontWeight.w700,
                ))
              : Row(
                  mainAxisAlignment:
                      isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: isMe
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onLongPress: () {
                              onTap();
                            },
                            child: tatLong != null
                                ? Container(
                                    height: 150,
                                    width: Get.width * 0.8,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: ShowGoogleMap(
                                        myLocationButtonEnabled: false,
                                        myLocationEnabled: false,
                                        zoomControlsEnabled: false,
                                        latitude:
                                            tatLong?.latitude.toDouble() ?? 0.0,
                                        longitude:
                                            tatLong?.longitude.toDouble() ??
                                                0.0,
                                        onTapLatLong: (value) => print(value),
                                      ),
                                    ),
                                  )
                                : audio.isNotEmpty
                                    ? VoiceMessageView(
                                        backgroundColor: AppColors.primaryColor,
                                        activeSliderColor: AppColors.white,
                                        circlesColor: AppColors.transparent,
                                        counterTextStyle: const TextStyle(
                                            color: AppColors.white),
                                        playIcon: const Icon(
                                          CupertinoIcons.play_arrow_solid,
                                          color: AppColors.white,
                                        ),
                                        controller: VoiceController(
                                          audioSrc:
                                              'https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3',
                                          maxDuration:
                                              const Duration(seconds: 10),
                                          isFile: false,
                                          onComplete: () {
                                            /// do something on complete
                                          },
                                          onPause: () {
                                            /// do something on pause
                                          },
                                          onPlaying: () {
                                            /// do something on playing
                                          },
                                          onError: (err) {
                                            /// do somethin on error
                                          },
                                        ),
                                        innerPadding: 12,
                                        cornerRadius: 20,
                                      )
                                    : Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        decoration: BoxDecoration(
                                          color: isMe
                                              ? AppColors.primaryColor
                                              : const Color(0xffEEEEEE),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: CommonText(
                                          maxLines: 10,
                                          textAlign: TextAlign.left,
                                          fontWeight: FontWeight.w400,
                                          color: isMe
                                              ? AppColors.white
                                              : AppColors.black,
                                          text: text,
                                        ),
                                      ),
                          ),
                          const SizedBox(height: 4),
                          CommonText(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            text: time.time,
                            left: isMe ? 0 : 10,
                            right: isMe ? 10 : 0,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
