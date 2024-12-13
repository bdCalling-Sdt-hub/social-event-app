import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VideoCallController extends GetxController {
  bool isMic = false;

  bool isVideo = false;

  bool isSound = false;

  bool isRinging = true;

  double dragHorizontal = 20.0;
  double dragVertical = 80.0;

  void onPanUpdate(details) async {
    double newDragHorizontal = dragHorizontal - details.delta.dx;
    double newDragVertical = dragVertical + details.delta.dy;
    double screenWidth = MediaQuery.of(Get.context!).size.width;
    double screenHeight = MediaQuery.of(Get.context!).size.height;

    double objectHeight = 135;
    double objectWidth = 100;

    if (newDragHorizontal < 0) {
      dragHorizontal = 0;
    } else if (newDragHorizontal > screenWidth - objectWidth) {
      dragHorizontal = screenWidth - objectWidth;
    } else {
      dragHorizontal = newDragHorizontal;
    }

    if (newDragVertical < 0) {
      dragVertical = 0;
    } else if (newDragVertical > screenHeight - objectHeight) {
      dragVertical = screenHeight - objectHeight;
    } else {
      dragVertical = newDragVertical;
    }

    update();
  }

  changeMute() {
    isMic = !isMic;
    update();
  }

  changeVideo() {
    isVideo = !isVideo;
    update();
  }

  changeSound() {
    isSound = !isSound;
    update();
  }

  changeRinging() {
    isRinging = !isRinging;
    update();
  }
}
