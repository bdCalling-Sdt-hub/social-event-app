import 'package:flutter/material.dart';

import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_images.dart';
import 'package:social_event/view/component/image/common_image.dart';
import 'package:social_event/view/screen/settings/inner_widget/emergency_contact_number_item.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

class EmargencyContact extends StatelessWidget {
   EmargencyContact({super.key});

  List item=["Naimul", "chironjit",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title:  CommonText(
          text: AppString.emergencyContacts,
          color: AppColors.white,
          fontSize: 24,
          fontWeight: FontWeight.w700,),
      ),
      
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              40.height,
              CommonImage(
                height: 190,
                  width: 150,
                  imageType: ImageType.png,
                  imageSrc: AppImages.emergency_contact),
          
              CommonText(
                  fontSize: 30,
                  top: 20,
                  text: AppString.emergencyContacts),
          
              CommonText(
                left: 30,
                right: 30,
                maxLines: 3,
                  fontSize: 18,
                  top: 20,
                  fontWeight: FontWeight.w500,
                  text: AppString.emergencyContactDettails),
              30.height,
          
          
              Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:item.length<3? item.length+1:item.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisExtent: 122,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.70),
                    itemBuilder: (context, index) {
                     if(index<item.length){
                       return EmergencyContactNumberItem(
                         image: AppImages.image3,

                         name: item[index],
                       );
                     }else{
                       return SizedBox(
                         height: 120,
                         width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                          padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: AppColors.primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.manage_accounts, size: 40,color: AppColors.white,),
                            ),

                            CommonText(
                              top: 10,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              text: AppString.add,color: AppColors.primaryColor,)
                          ],
                        ),
                       );
                     }
                    }),
              )
            ],
          ),
        ),
      ),

    );
  }
}
