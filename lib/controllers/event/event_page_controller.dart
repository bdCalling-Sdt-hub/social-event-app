import 'package:get/get.dart';

class EventPageController extends GetxController {
  int index = 0;

  bool isFavorite = false;

  bool isSent = false;

  changeFavorite() {
    isFavorite = !isFavorite;
    update();
  }

  changeSent() {
    isSent = !isSent;
    update();
  }

  changeIndex(value) {
    index = value;
    update();
  }
}
