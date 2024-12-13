import 'package:get/get.dart';

class FriendPermissionController extends GetxController {
  bool isSpeakers = false;

  bool isEnterSend = false;

  bool isId = false;

  bool isMobile = false;

  bool isGroup = false;
  bool isQrCode = false;
  bool isCard = false;

  changeAutoDownload() {
    isId = !isId;
    update();
  }

  changePhoto() {
    isMobile = !isMobile;
    update();
  }

  changeVideo() {
    isGroup = !isGroup;
    update();
  }

  changeAutoSearch() {
    isQrCode = !isQrCode;
    update();
  }

  changeEnabling() {
    isCard = !isCard;
    update();
  }

  changeSpeaker() {
    isSpeakers = !isSpeakers;
    update();
  }

  changeEnterSend() {
    isEnterSend = !isEnterSend;
    update();
  }
}
