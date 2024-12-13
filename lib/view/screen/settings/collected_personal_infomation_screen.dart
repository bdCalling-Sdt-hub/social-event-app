import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/other_widgets/item.dart';
import '../../component/text/common_text.dart';

class CollectedPersonalInfomationScreen extends StatelessWidget {
  const CollectedPersonalInfomationScreen({super.key});

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
            text: AppString.collectedPersonalInformation),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            10.height,
            const Item(title: AppString.downloadMyInformation),
          ],
        ),
      ),
    );
  }
}
