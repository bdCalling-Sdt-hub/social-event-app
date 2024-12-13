import 'package:flutter/material.dart';

import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/screen/points_and_offers/inner_widget/product_exchange_item.dart';

class ProductExchangeScreen extends StatelessWidget {
  const ProductExchangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.productExchange),

      ),

      body: SizedBox(
        child: ListView.builder(
          itemCount: 5,
            itemBuilder: (context, index){
            return productExchangeItem();

        }),
      ),
    );
  }
}
