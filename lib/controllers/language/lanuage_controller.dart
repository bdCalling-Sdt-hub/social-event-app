
import 'package:get/get.dart';

import '../../helpers/prefs_helper.dart';

class LanguageController extends GetxController {
  static LanguageController get instance => Get.put(LanguageController());

  RxBool selectedCountry = false.obs;




  languageTap() async{
    selectedCountry.value = !selectedCountry.value;


    update();
  }

  RxString titleText = PrefsHelper.localizationCountryCode.obs;
  String languageCode = 'en';
}
