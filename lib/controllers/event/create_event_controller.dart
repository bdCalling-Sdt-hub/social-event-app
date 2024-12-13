import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../utils/app_string.dart';

class CreateEventController extends GetxController {
  String joinEvent = AppString.friendsOnly;

  String eventType = AppString.free;

  String seletedAge = "";
  List seletedCategories = [];

  List item = ["Percentage"];

  TextEditingController dateController = TextEditingController();

  TextEditingController timeController = TextEditingController();
  TextEditingController discountTypeController = TextEditingController();
  TextEditingController discountValueController =
      TextEditingController(text: "10%");

  changeDiscountType(index) {
    discountTypeController.text = item[index];
    update();
    Get.back();
  }

  List age =  [
    "1-3",
    "4-6",
    "7-12",
    "13-17",
    "18-35",
    "36-55",
    "56-70",
    "All Ages".tr,
  ];
  List categories =  [
    "Social".tr,
    "Education".tr,
    "Entertain".tr,
    "Sports".tr,
    "Tech".tr,
    "Expo".tr,
    "Leisure".tr,
    "Brands".tr,
  ];

  selectingCategories(item) {
    if (seletedCategories.contains(item)) {
      seletedCategories.remove(item);
      update();
      return;
    }
    seletedCategories.add(item);
    update();
  }

  selectedAge(int index) {
    seletedAge = age[index].toString();
    update();
  }

  changeEventType(type) {
    eventType = type;
    update();
  }
}
