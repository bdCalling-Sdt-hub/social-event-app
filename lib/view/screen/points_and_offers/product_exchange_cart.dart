import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/custom_bottom_sheet/custom_bottomsheet.dart';
import 'package:social_event/view/component/text/common_text.dart';
import 'package:social_event/view/component/text_field/common_text_field.dart';

import '../../../utils/app_images.dart';
import '../../component/image/common_image.dart';

class ProductExchangeCart extends StatelessWidget {
  const ProductExchangeCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CommonText(
            color: AppColors.white,
            fontSize: 24,
            text: AppString.cart),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 1),
                    spreadRadius: 0,
                  )
                ]
            ),

            child: Row(
              children: [

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1, color: Colors.black.withOpacity(0.2))
                  ),
                  child: CommonImage(
                      height: 100,
                      width: 100,
                      imageType: ImageType.png,
                      imageSrc: AppImages.exchange_product1),
                ),

                15.width,

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CommonText(
                        fontSize: 24,
                        bottom: 8,
                        fontWeight: FontWeight.w700,
                        text: "Product Name"),

                    const SizedBox(
                      width: 280,
                      child: CommonText(
                          textAlign: TextAlign.start,
                          maxLines: 1,

                          fontSize: 20,
                          bottom: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textFiledColor,
                          text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                    ),
                    8.height,

                    Row(
                      children: [
                        CommonText(
                            fontSize:16,
                            fontWeight: FontWeight.w400,
                            text: AppString.redemPoints),
                        const CommonText(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            text:"10000"),
                      ],
                    )
                  ],
                ),






              ],
            ),
          ),
          
          
          
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  top: 30,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    text: AppString.addressDetails),

                //=================================All Textfield===========================

                CommonText(
                  top: 30,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    text: AppString.streetAddress),

                CommonTextField(
                  hintText: AppString.enterStreetAddress,
                ),

                CommonText(
                  top: 20,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    text: AppString.city),

                CommonTextField(
                  hintText: AppString.enterCity,
                ),

                CommonText(
                  top: 20,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    text: AppString.stateProvince),

                CommonTextField(
                  hintText: AppString.enterStateProvince,
                ),


                CommonText(
                    top: 20,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    text: AppString.country),

                CommonTextField(
                  hintText: AppString.enterCountry,
                ),



                CommonText(
                    top: 20,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    text: AppString.postCode),

                CommonTextField(
                  hintText: AppString.enterPostCode,
                ),
              ],
            ),
          )

        ],
        
        
      ),
    
    bottomNavigationBar: Padding(
      padding:  const EdgeInsets.all(20),
      child: CommonButton(
          onTap: (){
            customBottomsheet(context, title: AppString.yourOrderHasBeenPlaced, ontap: (){
              Get.toNamed(AppRoutes.pointAndOffers);
            });

          },
          titleText: AppString.placeOrder),
    ),
    );
    
  }
}
