import 'package:get/get.dart';

class HomeController extends GetxController {
  bool joinEvent = false;

  bool favorite = false;

  changeFavorite() {
    joinEvent = false;
    favorite = !favorite;
    update();
  }

  changeJoin() {
    favorite = false;
    joinEvent = !joinEvent;
    update();
  }
}
