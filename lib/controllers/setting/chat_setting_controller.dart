import 'package:get/get.dart';

import '../../utils/app_images.dart';

class ChatSettingController extends GetxController {
  List wallpapers = [
    AppImages.wallpaper1,
    AppImages.wallpaper2,
    AppImages.wallpaper3,
    AppImages.wallpaper4,
    AppImages.wallpaper5,
    AppImages.wallpaper6,
    AppImages.wallpaper7,
    AppImages.wallpaper8,
    AppImages.wallpaper9,
    AppImages.wallpaper10,
    AppImages.wallpaper11,
    AppImages.wallpaper12,
    AppImages.wallpaper13,
    AppImages.wallpaper14,
    AppImages.wallpaper15,
  ];

  String selectedWallpaper = AppImages.wallpaper1;

  bool isSpeakers = false;

  bool isEnterSend = false;

  changeWallpaper(item) {
    print(item);
    selectedWallpaper = item;
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
