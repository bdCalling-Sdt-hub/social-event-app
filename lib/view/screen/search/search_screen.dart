import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/utils/app_colors.dart';
import 'package:social_event/view/component/map/google_map.dart';
import 'package:social_event/view/screen/search/search_location.dart';

import '../../../helpers/app_routes.dart';
import '../../../utils/app_string.dart';
import '../../component/bottom_nav_bar/common_bottom_bar.dart';
import '../../component/text/common_text.dart';
import '../home/widgets/favorite_item.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  String qrResult = "";

  Future<void> scanQR() async {
    try {
      var result = await BarcodeScanner.scan();

      qrResult = result.rawContent;
      if (qrResult.isNotEmpty) {}
    } catch (e) {
      if (kDebugMode) {
        print("Error : ==== $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
              onPressed: scanQR,
              icon: const Icon(
                Icons.add_circle_outline_sharp,
                color: AppColors.white,
              )),
          IconButton(
              onPressed: () => Get.toNamed(AppRoutes.scarchNotification),
              icon: const Icon(
                Icons.notifications_rounded,
                color: AppColors.white,
              )),
          IconButton(
              onPressed: () => Get.toNamed(AppRoutes.profile),
              icon: const Icon(
                Icons.settings,
                color: AppColors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          searchLocation(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  20.height,
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    height: 240,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             CommonText(
                              text: "Events near you".tr,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                            InkWell(
                              onTap: () => Get.toNamed(AppRoutes.eventNear),
                              child:  CommonText(
                                text: "View All".tr,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                        10.height,
                        Expanded(
                          child: ShowGoogleMap(
                            onTapLatLong: (value) => print(value),
                          ),
                        ),
                        10.height,
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        20.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             CommonText(
                              text: "Featured activities".tr,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                            InkWell(
                              onTap: () =>
                                  Get.toNamed(AppRoutes.featuredActivities),
                              child:  CommonText(
                                text:  "View All".tr,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                        ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => GestureDetector(
                              onTap: () => Get.toNamed(AppRoutes.eventPage),
                              child: const FavoriteItem()),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CommonBottomNavBar(currentIndex: 1),
    );
  }
}
