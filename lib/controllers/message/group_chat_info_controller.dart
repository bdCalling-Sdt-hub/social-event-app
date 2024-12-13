import 'package:get/get.dart';

class GroupChatInfoController extends GetxController {
  bool isNotification = false;

  bool isSticky = false;

  bool isSave = false;
  bool isOnScreen = false;

  changeNotification() {
    isNotification = !isNotification;
    update();
  }

  changeOnScreen() {
    isOnScreen = !isOnScreen;
    update();
  }

  changeSticky() {
    isSticky = !isSticky;
    update();
  }

  changeSave() {
    isSave = !isSave;
    update();
  }
}
