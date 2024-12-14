import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/controllers/article/create_article_controller.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/text_field/common_text_field.dart';
import 'package:social_event/view/screen/artical/widgets/video_player.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/text/common_text.dart';

class CreateArticleScreen extends StatefulWidget {
  const CreateArticleScreen({super.key});

  @override
  State<CreateArticleScreen> createState() => _CreateArticleScreenState();
}

class _CreateArticleScreenState extends State<CreateArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title:  CommonText(
            fontSize: 24,
            color: AppColors.white,
            maxLines: 2,
            fontWeight: FontWeight.w700,
            text: AppString.sharePost),
      ),
      body: GetBuilder<CreateArticleController>(
        builder: (controller) => Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CommonTextField(
                hintText: AppString.writeSomething,
                hintTextColor: AppColors.black.withOpacity(0.5),
                maxLines: 3,
                keyboardType: TextInputType.multiline,
              ),
               CommonText(
                text: AppString.connectEvent,
                fontSize: 13,
                top: 10,
                fontWeight: FontWeight.bold,
              ).start,
              CommonTextField(
                hintText: AppString.connectEventDetails,
                hintTextColor: AppColors.black.withOpacity(0.5),
                suffixIcon: const Icon(Icons.search),
                paddingVertical: 8,
              ),
              16.height,
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.images.length + 2,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: const Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                            onPressed: controller.addVideo,
                            icon: const Icon(CupertinoIcons.videocam)),
                      );
                    }
                    if (index == 1) {
                      return Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: const Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                            onPressed: controller.addImage,
                            icon: const Icon(CupertinoIcons.camera)),
                      );
                    }

                    var item = controller.images[index - 2];

                    if (item['type'] == "video") {
                      return VideoPlayerItem(item: item);
                    }

                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffEEEEEE),
                              borderRadius: BorderRadius.circular(12)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.file(
                              File(
                                item['source'],
                              ),
                              fit: BoxFit.fill,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: GestureDetector(
                                onTap: () => controller.removeImage(
                                      item,
                                    ),
                                child: const CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 12,
                                    child: Icon(
                                      Icons.clear,
                                      size: 16,
                                      color: AppColors.white,
                                    ))))
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CommonButton(
          titleText: AppString.previewPost,
          onTap: () => Get.toNamed(AppRoutes.reviewPost),
        ),
      ),
    );
  }
}
