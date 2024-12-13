import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_event/helpers/app_routes.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/utils/app_string.dart';
import 'package:social_event/view/component/button/common_button.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/component/text/common_text.dart';

class ProductExchangeDettails extends StatelessWidget {
  const ProductExchangeDettails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: Container(
                  margin: const EdgeInsets.only( top: 50),
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle
                  ),
                  child: const Icon(Icons.arrow_back, color: AppColors.white,),
                ),
              ),

              CommonImage(
                width: double.infinity,
                  height: 430,
                  imageType: ImageType.png,
                  imageSrc: AppImages.exchange_product1),

              const CommonText(
                top: 10,
                  bottom: 20,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  text: "Product Name"),


              const Row(
                children: [
                  CommonText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      text: AppString.redemPoints),
                  CommonText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      text:"10000"),
                ],
              ),


              const CommonText(
                top: 20,
                textAlign: TextAlign.start,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  maxLines: 20,
                  text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mollis nunc a molestie dictum. Mauris venenatis, felis scelerisque aliquet lacinia, nulla nisi venenatis odio, id blandit mauris ipsum id sapien. Vestibulum malesuada orci sit amet pretium facilisis. In lobortis congue augue, a commodo libero tincidunt scelerisque. Donec tempus congue lacinia. Phasellus lacinia felis est, placerat commodo odio tincidunt iaculis. Sed felis magna, iaculis a metus id, ullamcorper suscipit nulla. Fusce facilisis, nunc ultricies posuere porttitor, nisl lacus tincidunt diam, vel feugiat nisi elit id massa. Proin nulla augue, dapibus non justo in, laoreet commodo nunc. Maecenas faucibus neque in nulla mollis interdum. Quisque quis pellentesque enim, vitae pulvinar purus. Quisque vitae suscipit risus. Curabitur scelerisque magna a interdum pretium. Integer sodales metus ut placerat viverra. Curabitur accumsan, odio quis vehicula imperdiet, tellus ex venenatis nisl, a dignissim lectus augue tincidunt arcu.     ")
        
        
        
            ],
          ),
        ),
      ),
      
      bottomNavigationBar: Padding(
        padding:  const EdgeInsets.all(20),
        child: CommonButton(
            onTap: (){
              Get.toNamed(AppRoutes.product_exchange_cart);
            },
            titleText: AppString.add),
      ),
    );
  }
}
