import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:social_event/view/component/other_widgets/back.dart';
import 'package:social_event/view/screen/event/widgets/event_all_filed.dart';
import '../../../controllers/event/create_event_controller.dart';
import '../../../utils/app_images.dart';
import '../../component/text/common_text.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({super.key});

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  bool isEdit = false;

  @override
  void initState() {
    String value = Get.parameters['isEdit'] ?? "";
    isEdit = value.isNotEmpty ? true : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("=============> $isEdit");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),

        leading: back(),

      ),
      body: GetBuilder<CreateEventController>(
        builder: (controller) => SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 390,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  image: isEdit
                      ? const DecorationImage(
                          opacity: 0.6,
                          image: AssetImage(AppImages.eventInfo),
                          fit: BoxFit.fitHeight)
                      : null,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.image_outlined),
                        12.width,
                        const Icon(Icons.videocam_outlined),
                      ],
                    ),
                     CommonText(
                      text: "Add up to 6 images and 1 video".tr,
                      color: Color(0xff909090),
                      fontSize: 12,
                      top: 12,
                    ),
                  ],
                ),
              ),
              10.height,
              EventAllFiled(
                isEdit: isEdit,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CommonBottomNavBar(currentIndex: 2),
    );
  }
}
