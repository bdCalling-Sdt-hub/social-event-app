import 'package:get/get.dart';

import '../../utils/app_images.dart';

class BuyTicketController extends GetxController {
  String value = '';

  List paymentList = [
    {"name": "AliPay", "image": AppImages.aliPay},
    {"name": "WeChat Pay", "image": AppImages.weChartPay},
    {"name": "Pay Pal", "image": AppImages.payPal},
    {"name": "Credit Card", "image": AppImages.creditCard},
  ];

  changeValue(v) {
    print(v);
    value = v;
    update();
  }

  static BuyTicketController get instance => Get.put(BuyTicketController());
}
