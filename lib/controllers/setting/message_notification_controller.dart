import 'package:get/get.dart';

class MessageNotificationController extends GetxController {
  bool isAlert = false;

  bool isCallNotification = false;

  bool isNotification = false;

  changeAlert() {
    isAlert = !isAlert;
    update();
  }

  changeCallNotification() {
    isCallNotification = !isCallNotification;
    update();
  }

  changeNotification() {
    isNotification = !isNotification;
    update();
  }
}
