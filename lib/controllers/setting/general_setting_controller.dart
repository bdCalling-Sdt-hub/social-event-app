import 'package:get/get.dart';

class GeneralSettingController extends GetxController {
  bool isAutoDownload = false;

  bool isPhoto = false;

  bool isVideo = false;
  bool isSearch = false;
  bool isEnabling = false;
  bool isQuality = false;

  changeAutoDownload() {
    isAutoDownload = !isAutoDownload;
    update();
  }

  changePhoto() {
    isPhoto = !isPhoto;
    update();
  }

  changeVideo() {
    isVideo = !isVideo;
    update();
  }

  changeAutoSearch() {
    isSearch = !isSearch;
    update();
  }

  changeEnabling() {
    isEnabling = !isEnabling;
    update();
  }

  changeQuality() {
    isQuality = !isQuality;
    update();
  }
}
