import 'package:get/get.dart';

class ChatInfoController extends GetxController {
  bool isNotification = false;

  bool isSticky = false;

  bool isAlert = false;

  changeNotification() {
    isNotification = !isNotification;
    update();
  }

  changeSticky() {
    isSticky = !isSticky;
    update();
  }


  changeAlert() {
    isAlert = !isAlert;
    update();
  }


}
