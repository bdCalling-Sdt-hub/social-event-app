import 'dart:ui';

import 'package:get/get.dart';

import '../../helpers/prefs_helper.dart';

class LanguageController extends GetxController {


  void changeLanguage(String languageCode, String countryCode) {


    PrefsHelper.localizationCountryCode = countryCode;
    PrefsHelper.localizationLanguageCode = languageCode;
    Get.updateLocale(Locale(languageCode, countryCode));
    PrefsHelper.setString("localizationLanguageCode", languageCode);
    PrefsHelper.setString("localizationCountryCode", countryCode);
  }
}
