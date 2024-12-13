import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/view/screen/artical/widgets/post_item.dart';

import '../../../helpers/app_routes.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/button/common_button.dart';
import '../../component/text/common_text.dart';

class ReviewPostScreen extends StatelessWidget {
  const ReviewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
            fontSize: 24,
            color: AppColors.white,
            maxLines: 2,
            fontWeight: FontWeight.w700,
            text: AppString.previewPost),
      ),
      body: const SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: PostItem(),
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CommonButton(
          titleText: AppString.post,
          onTap: () => Get.toNamed(AppRoutes.home),
        ),
      ),
    );
  }
}
