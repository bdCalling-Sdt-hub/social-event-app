import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/helpers/other_helper.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_icons.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

import '../../../../controllers/message/message_controller.dart';

Widget writeMessage() {
  return GetBuilder<MessageController>(
    builder: (controller) => Column(
      children: [
        TextFormField(
          controller: controller.messageController,
          onChanged: controller.changeMessage,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: AppString.writeMessage,
              hintStyle: TextStyle(color: AppColors.black.withOpacity(0.4)),
              prefixIcon: IconButton(
                  onPressed: controller.changeIsAdd,
                  icon: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: MessageController.instance.isAdd
                            ? AppColors.primaryColor
                            : AppColors.transparent),
                    child: Icon(Icons.add_circle_outline_rounded,
                        color: MessageController.instance.isAdd
                            ? AppColors.white
                            : AppColors.black.withOpacity(0.4)),
                  )),
              suffixIcon: !controller.isMessageEmpty
                  ? IconButton(
                      onPressed: () {
                        print(controller.messageController.text);
                      },
                      icon: CommonImage(
                        imageSrc: AppIcons.sendMessage,
                        imageType: ImageType.svg,
                        height: 36,
                        width: 36,
                      ))
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: AppColors.black.withOpacity(0.4),
                            )),
                        IconButton(
                            onPressed: OtherHelper.openGallery,
                            icon: Icon(Icons.camera_alt_outlined,
                                color: AppColors.black.withOpacity(0.4))),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mic_none,
                                color: AppColors.black.withOpacity(0.4))),
                      ],
                    )),
        ),
        addOtherFile()
      ],
    ),
  );
}

Widget addOtherFile() {
  return AnimatedContainer(
    duration: const Duration(seconds: 1),
    height: MessageController.instance.isAdd ? 260 : 0,
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              item(icon: Icons.location_on_outlined, title: AppString.location),
              40.width,
              item(icon: Icons.folder_open, title: AppString.files),
            ],
          ),
          20.height,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              item(
                  icon: CupertinoIcons.chat_bubble_2,
                  title: AppString.groupNote),
              40.width,
              item(icon: Icons.contacts_outlined, title: AppString.contactCard),
            ],
          ),
          20.height,
        ],
      ),
    ),
  );
}

Widget item({required IconData icon, required String title}) => Column(
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xffF4F6F9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            color: AppColors.primaryColor,
            size: 36,
          ),
        ),
        CommonText(
          text: title,
          color: AppColors.black,
          top: 8,
        )
      ],
    );
