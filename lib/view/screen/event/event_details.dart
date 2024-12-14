import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/event/widgets/organizer.dart';

import '../../../helpers/app_routes.dart';
import '../../component/other_widgets/back.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  final String value =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mollis nunc a molestie dictum. Mauris venenatis, felis scelerisque aliquet lacinia, nulla nisi venenatis odio, id blandit mauris ipsum id sapien. Vestibulum malesuada orci sit amet pretium facilisis. In lobortis congue augue, a commodo libero tincidunt scelerisque. Donec tempus congue lacinia. Phasellus lacinia felis est, placerat commodo odio tincidunt iaculis. Sed felis magna, iaculis a metus id, ullamcorper suscipit nulla. Fusce facilisis, nunc ultricies posuere porttitor, nisl lacus tincidunt diam, vel feugiat nisi elit id massa. Proin nulla augue, dapibus non justo in, laoreet commodo nunc. Maecenas faucibus neque in nulla mollis interdum. Quisque quis pellentesque enim, vitae pulvinar purus. Quisque vitae suscipit risus. Curabitur scelerisque magna a interdum pretium. Integer sodales metus ut placerat viverra. Curabitur accumsan, odio quis vehicula imperdiet, tellus ex venenatis nisl, a dignissim lectus augue tincidunt arcu.     ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: back(),
        centerTitle: true,
        title: CommonText(
          text: AppString.eventInformation,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonImage(
              imageSrc: AppImages.eventInfo,
              imageType: ImageType.png,
              height: 160,
              borderRadius: 0,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined),
                        Container(
                          height: 15,
                          width: 1,
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          color: const Color(0xff0000004d).withOpacity(0.30),
                        ),
                        const Flexible(
                          child: CommonText(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              text:
                                  "105 Yandang Road Huangpu District, Shanghai"),
                        )
                      ],
                    ),
                    16.height,
                    Row(
                      children: [
                        const Icon(Icons.date_range),
                        Container(
                          height: 15,
                          width: 1,
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          color: const Color(0xff0000004d).withOpacity(0.30),
                        ),
                        const CommonText(
                          text: "September 30, 2023",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        20.width,
                        const Row(
                          children: [
                            Icon(Icons.access_time),
                            CommonText(
                              text: "09:00 AM",
                              fontSize: 12,
                              left: 10,
                              fontWeight: FontWeight.w400,
                            )
                          ],
                        ),
                      ],
                    ),
                    16.height,
                    Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          size: 8,
                        ),
                        CommonText(
                          text: AppString.ageGroup,
                          fontSize: 13,
                          right: 70,
                        ),
                        CommonText(
                          text: AppString.allAges,
                          fontSize: 15,
                          textAlign: TextAlign.start,
                          color: AppColors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                    16.height,
                    Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          size: 8,
                        ),
                        CommonText(
                          text: AppString.category,
                          fontSize: 13,
                          right: 80,
                        ),
                        CommonText(
                          text: AppString.entertain,
                          fontSize: 15,
                          color: AppColors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                    25.height,
                    Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                          color: const Color(0xffE4F7F3),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const CommonText(
                            text: "Fee: ¥ 100",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor,
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(AppRoutes.buyTicket),
                            child: CommonButton(
                              titleText: AppString.buyTicket,
                              buttonWidth: 150,
                              buttonHeight: 42,
                            ),
                          )
                        ],
                      ),
                    ),
                    CommonText(
                      text: AppString.description,
                      fontWeight: FontWeight.w700,
                      top: 20,
                      bottom: 10,
                    ).start,
                    CommonText(
                      text: value,
                      maxLines: 100,
                      textAlign: TextAlign.start,
                      color: AppColors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w400,
                    ),
                    CommonText(
                      text: AppString.eventOrganizers,
                      fontWeight: FontWeight.bold,
                      top: 20,
                      bottom: 10,
                    ).start,
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return Organizer(
                            image: AppImages.image3,
                            name: "Bác. Lỡ Lĩnh ",
                            title: index == 0 ? "Creator" : "Organizer");
                      },
                    ),
                    20.height,
                    CommonButton(
                      titleText: AppString.joinEvent,
                      onTap: () => Get.toNamed(AppRoutes.eventPage),

                    ),
                    30.height
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
