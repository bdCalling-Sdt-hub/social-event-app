import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/screen/payment/widgets/payment_option_card.dart';

import '../../../controllers/payment/buy_ticket_controller.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/text/common_text.dart';

class BuyTicketScreen extends StatelessWidget {
  const BuyTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CommonText(
          text: AppString.buyTicket,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: GetBuilder<BuyTicketController>(
        builder: (controller) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              22.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: AppString.choosePaymentMethod,
                    color: const Color(0xff292D32),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.add),
                      CommonText(
                        text: AppString.addCard,
                        fontSize: 14,
                        color: const Color(0xff6D6D6D),
                      ),
                    ],
                  ),
                ],
              ),
              20.height,
              Expanded(
                child: ListView.builder(
                    itemCount: controller.paymentList.length,
                    itemBuilder: (context, index) {
                      return paymentOptionCard(controller.paymentList[index]);
                    }),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CommonButton(
          titleText: AppString.confirm,
          onTap: () => Get.back(),
        ),
      ),
    );
  }
}
