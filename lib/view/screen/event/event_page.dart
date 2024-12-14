import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/event/widgets/organizer.dart';

import '../../../controllers/event/event_page_controller.dart';
import '../../component/button/common_button.dart';
import '../../component/map/google_map.dart';
import '../../component/other_widgets/back.dart';
import '../message/widget/write_message.dart';
import 'widgets/discussion.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  final String value =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mollis nunc a molestie dictum. Mauris venenatis, felis scelerisque aliquet lacinia, nulla nisi venenatis odio, id blandit mauris ipsum id sapien. Vestibulum malesuada orci sit amet pretium facilisis. In lobortis congue augue, a commodo libero tincidunt scelerisque. Donec tempus congue lacinia. Phasellus lacinia felis est, placerat commodo odio tincidunt iaculis. Sed felis magna, iaculis a metus id, ullamcorper suscipit nulla. Fusce facilisis, nunc ultricies posuere porttitor, nisl lacus tincidunt diam, vel feugiat nisi elit id massa. Proin nulla augue, dapibus non justo in, laoreet commodo nunc. Maecenas faucibus neque in nulla mollis interdum. Quisque quis pellentesque enim, vitae pulvinar purus. Quisque vitae suscipit risus. Curabitur scelerisque magna a interdum pretium. Integer sodales metus ut placerat viverra. Curabitur accumsan, odio quis vehicula imperdiet, tellus ex venenatis nisl, a dignissim lectus augue tincidunt arcu.     ";

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EventPageController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: back(),
          title: CommonText(
            text: AppString.eventNameHere,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.all(4),
              child: Icon(
                Icons.file_upload_outlined,
                color: AppColors.primaryColor,
              ),
            ),
            InkWell(
              onTap: controller.changeSent,
              borderRadius: BorderRadius.circular(50),
              child: const Padding(
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.person_add_alt,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            InkWell(
              onTap: controller.changeFavorite,
              borderRadius: BorderRadius.circular(50),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Icon(
                  controller.isFavorite
                      ? Icons.favorite_outlined
                      : Icons.favorite_border,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: const Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => controller.changeIndex(0),
                      child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: controller.index == 0
                                  ? AppColors.primaryColor
                                  : AppColors.transparent),
                          child: CommonText(
                            text: AppString.eventInfo,
                            color: controller.index == 0
                                ? AppColors.white
                                : AppColors.black,
                          ).center),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => controller.changeIndex(1),
                      child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: controller.index == 1
                                  ? AppColors.primaryColor
                                  : AppColors.transparent),
                          child: CommonText(
                            text: AppString.discussion,
                            color: controller.index == 1
                                ? AppColors.white
                                : AppColors.black,
                          ).center),
                    ),
                  ),
                ],
              ),
            ),
            if (controller.index == 0)
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      10.height,
                      CommonImage(
                        imageSrc: AppImages.eventInfo,
                        imageType: ImageType.png,
                        height: Get.width,
                        width: double.infinity,
                        borderRadius: 0,
                      ),
                      10.height,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                6,
                                (index) => CommonImage(
                                  imageSrc: AppImages.event4,
                                  imageType: ImageType.png,
                                  height: 55,
                                  width: 55,
                                  borderRadius: 8,
                                ),
                              ),
                            ),
                            20.height,
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined),
                                Container(
                                  height: 15,
                                  width: 1,
                                  margin: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  color: const Color(0xff0000004d)
                                      .withOpacity(0.30),
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
                            20.height,
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.date_range),
                                        Container(
                                          height: 15,
                                          width: 1,
                                          margin: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          color: const Color(0xff0000004d)
                                              .withOpacity(0.30),
                                        ),
                                        const CommonText(
                                          text: "September 30, 2023",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                    20.height,
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
                                const Spacer(),
                                InkWell(
                                  onTap: () =>
                                      Get.toNamed(AppRoutes.genaratQrCode),
                                  child: QrImageView(
                                    data: '1234567890',
                                    version: QrVersions.auto,
                                    size: 48,
                                    foregroundColor: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 56,
                              margin: const EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                  color: const Color(0xffE4F7F3),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const CommonText(
                                    text: "Fee: ¥ 100",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor,
                                  ),
                                  InkWell(
                                    onTap: () =>
                                        Get.toNamed(AppRoutes.buyTicket),
                                    child: CommonButton(
                                      titleText: AppString.buyTicket,
                                      buttonWidth: 150,
                                      buttonHeight: 42,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            10.height,
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: ShowGoogleMap(
                                  myLocationButtonEnabled: false,
                                  myLocationEnabled: false,
                                  zoomControlsEnabled: false,
                                  latitude: 23.02554,
                                  longitude: 90.2150,
                                  onTapLatLong: (value) => print(value),
                                ),
                              ),
                            ),
                            20.height,
                            CommonText(
                              text: AppString.ageGroup,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ).start,
                            CommonText(
                              text: AppString.allAges,
                              fontWeight: FontWeight.w400,
                              top: 10,
                              color: AppColors.black.withOpacity(0.5),
                            ).start,
                            CommonText(
                              text: AppString.category,
                              top: 20,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ).start,
                            CommonText(
                              text: AppString.entertain,
                              fontWeight: FontWeight.w400,
                              top: 10,
                              color: AppColors.black.withOpacity(0.5),
                            ).start,
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
                            SizedBox(
                              height: 130,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 2,
                                itemBuilder: (context, index) => Organizer(
                                    image: AppImages.image3,
                                    name: "Bác. Lỡ Lĩnh ",
                                    title:
                                        index == 0 ? "Creator" : "Organizer"),
                              ),
                            ),
                            30.height,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (controller.index == 1) Expanded(child: Discussion()),
            if (controller.index == 1) writeMessage(),
            if (controller.index == 1) 16.height
          ],
        ),
      ),
    );
  }
}
