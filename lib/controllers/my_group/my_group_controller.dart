import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/other_helper.dart';

class MyGroupController extends GetxController {
  String? image;

  RxInt selectedButtonIndex = 0.obs;

  TextEditingController groupNameController = TextEditingController();
  TextEditingController searchPeopleController = TextEditingController();

  void getGroupImage() async {
    image = await OtherHelper.openGallery();
    update();
  }

  static MyGroupController get instance => Get.put(MyGroupController());

  void selectedButton(index) {
    selectedButtonIndex.value = index;
    update();
  }
}
