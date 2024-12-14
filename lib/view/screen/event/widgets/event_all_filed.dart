import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/controllers/event/create_event_controller.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../../helpers/other_helper.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_string.dart';
import '../../../component/button/common_button.dart';
import '../../../component/pop_up/common_pop_menu.dart';
import '../../../component/text/common_text.dart';
import '../../../component/text_field/common_text_field.dart';
import 'create_event_bottom_bar.dart';
import 'organizer.dart';

class EventAllFiled extends StatelessWidget {
  const EventAllFiled({super.key, required this.isEdit});

  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateEventController>(
        builder: (controller) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      6,
                      (index) => Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              image: isEdit
                                  ? const DecorationImage(
                                      opacity: 0.6,
                                      image: AssetImage(AppImages.event4))
                                  : null,
                              color: const Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            size: 18,
                          )),
                    ),
                  ),
                  20.height,
                  CommonText(
                    text: AppString.eventTitle,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ).start,
                  CommonTextField(
                    hintText: AppString.enterEventTitle,
                  ),
                  CommonText(
                    text: AppString.eventLocation,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    top: 16,
                  ).start,
                  CommonTextField(
                    hintText: AppString.enterEventLocation,
                    suffixIcon: const Icon(Icons.location_on_outlined),
                  ),
                  CommonText(
                    text: AppString.eventEntry,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    top: 20,
                    bottom: 10,
                  ).start,
                  Row(
                    children: [
                      Expanded(
                          child: CommonButton(
                        titleText: AppString.free,
                        buttonHeight: 32,
                        borderColor: controller.eventType == AppString.free
                            ? AppColors.transparent
                            : Colors.black,
                        buttonColor: controller.eventType == AppString.free
                            ? AppColors.primaryColor
                            : Colors.transparent,
                        titleColor: controller.eventType == AppString.free
                            ? AppColors.white
                            : Colors.black,
                        onTap: () => controller.changeEventType(AppString.free),
                      )),
                      20.width,
                      Expanded(
                          child: CommonButton(
                        titleText: AppString.fee,
                        buttonHeight: 32,
                        borderColor: controller.eventType == AppString.fee
                            ? AppColors.transparent
                            : Colors.black,
                        buttonColor: controller.eventType == AppString.fee
                            ? AppColors.primaryColor
                            : Colors.transparent,
                        titleColor: controller.eventType == AppString.fee
                            ? AppColors.white
                            : Colors.black,
                        onTap: () => controller.changeEventType(AppString.fee),
                      ))
                    ],
                  ),
                  if (controller.eventType == AppString.fee)
                    Column(
                      children: [
                        12.height,
                        CommonText(
                          text: AppString.eventFee,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ).start,
                        CommonTextField(
                          hintText: AppString.eventFee,
                        ),
                        CommonText(
                          text: AppString.promoCode,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          top: 16,
                        ).start,
                        CommonTextField(
                          hintText: AppString.promoCode,
                        ),
                        16.height,
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                CommonText(text: AppString.discountType)
                                    .start,
                                CommonTextField(
                                  controller: controller.discountTypeController,
                                  hintText: AppString.discountType,
                                  suffixIcon: PopUpMenu(
                                    items: controller.item,
                                    selectedItem: [
                                      controller.discountTypeController.text
                                    ],
                                    onTap: controller.changeDiscountType,
                                  ),
                                )
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                CommonText(text: AppString.discountValue)
                                    .start,
                                CommonTextField(
                                  controller:
                                      controller.discountValueController,
                                  hintText: AppString.discountValue,
                                )
                              ],
                            )),
                          ],
                        ),
                      ],
                    ),
                  20.height,
                  CommonText(
                    text: AppString.whoCanJoinTheEvent,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    bottom: 10,
                  ).start,
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 3),
                        decoration: BoxDecoration(
                            color: AppString.anyone == controller.joinEvent
                                ? AppColors.primaryColor
                                : AppColors.transparent,
                            border: Border.all(
                                color: AppString.anyone == controller.joinEvent
                                    ? AppColors.transparent
                                    : AppColors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          child: CommonText(
                            text: AppString.anyone,
                            color: AppString.anyone == controller.joinEvent
                                ? AppColors.white
                                : AppColors.black,
                          ).center,
                        ),
                      ),
                      20.width,
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 3),
                        decoration: BoxDecoration(
                            color: AppString.friendsOnly == controller.joinEvent
                                ? AppColors.primaryColor
                                : AppColors.transparent,
                            border: Border.all(
                                color: AppString.friendsOnly ==
                                        controller.joinEvent
                                    ? AppColors.transparent
                                    : AppColors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          child: CommonText(
                            text: AppString.friendsOnly,
                            color: AppString.friendsOnly == controller.joinEvent
                                ? AppColors.white
                                : AppColors.black,
                          ).center,
                        ),
                      )
                    ],
                  ),
                  CommonText(
                    text: AppString.ageGroup,
                    fontWeight: FontWeight.w700,
                    bottom: 10,
                    top: 30,
                  ).start,
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.age.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisExtent: 30,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12),
                    itemBuilder: (context, index) {
                      var item = controller.age[index];
                      return Container(
                        decoration: BoxDecoration(
                            color: controller.seletedAge == item
                                ? AppColors.primaryColor
                                : AppColors.transparent,
                            border: Border.all(
                                color: controller.seletedAge == item
                                    ? AppColors.transparent
                                    : AppColors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          onTap: () => controller.selectedAge(index),
                          child: CommonText(
                            text: controller.age[index],
                            color: controller.seletedAge == item
                                ? AppColors.white
                                : AppColors.black,
                          ).center,
                        ),
                      );
                    },
                  ),
                  CommonText(
                    text: AppString.categories,
                    fontWeight: FontWeight.w700,
                    bottom: 10,
                    top: 30,
                  ).start,
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.categories.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisExtent: 30,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12),
                    itemBuilder: (context, index) {
                      var item = controller.categories[index];
                      return Container(
                        decoration: BoxDecoration(
                            color: controller.seletedCategories.contains(item)
                                ? AppColors.primaryColor
                                : AppColors.transparent,
                            border: Border.all(
                                color:
                                    controller.seletedCategories.contains(item)
                                        ? AppColors.transparent
                                        : AppColors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          onTap: () => controller.selectingCategories(item),
                          child: CommonText(
                            text: item,
                            color: controller.seletedCategories.contains(item)
                                ? AppColors.white
                                : AppColors.black,
                          ).center,
                        ),
                      );
                    },
                  ),
                  12.height,
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          CommonText(text: AppString.date).start,
                          CommonTextField(
                            controller: controller.dateController,
                            hintText: AppString.date,
                            suffixIcon: InkWell(
                                onTap: () => OtherHelper.datePicker(
                                    controller.dateController),
                                child: const Icon(Icons.date_range)),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          CommonText(text: AppString.time).start,
                          CommonTextField(
                            controller: controller.timeController,
                            hintText: AppString.time,
                            suffixIcon: InkWell(
                                onTap: () => OtherHelper.openTimePicker(
                                    controller.timeController),
                                child: const Icon(Icons.access_time_rounded)),
                          )
                        ],
                      )),
                    ],
                  ),
                  12.height,
                  CommonText(
                    text: AppString.description,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ).start,
                  CommonTextField(
                    hintText: AppString.typeHere,
                    maxLines: 4,
                    keyboardType: TextInputType.multiline,
                  ),
                  20.height,
                  SizedBox(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        if (index == 2) {
                          return InkWell(
                            onTap: () => Get.toNamed(AppRoutes.selectOrganizer),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: AppColors.primaryColor,
                                    child: Icon(
                                      Icons.person_add_alt_1,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  CommonText(
                                    text: AppString.addOrganizer,
                                    color: AppColors.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  )
                                ],
                              ),
                            ),
                          );
                        }

                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Organizer(
                                image: AppImages.image3,
                                name: index == 0 ? "you" : "Bác. Lỡ Lĩnh ",
                                title: index == 0 ? "Creator" : "Organizer"),
                            if (index != 0)
                              const Positioned(
                                  right: 16,
                                  top: 0,
                                  child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 12,
                                      child: Icon(
                                        Icons.clear,
                                        size: 16,
                                        color: AppColors.white,
                                      )))
                          ],
                        );
                      },
                    ),
                  ),
                  20.height,
                  if (isEdit)
                    CommonButton(
                      buttonColor: AppColors.transparent,
                      titleColor: AppColors.primaryColor,
                      titleText: AppString.fransFerEvent,
                      onTap: () => transferBottomSheetModel(context, isEdit),
                    ),
                  20.height,
                  CommonButton(
                    titleText: isEdit
                        ? AppString.eventUpdated
                        : AppString.eventCreated,
                    onTap: () => showBottomSheetModel(context, isEdit),
                  ),
                  20.height
                ],
              ),
            ));
  }
}
