import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/helpers/other_helper.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/other_widgets/item.dart';
import '../../component/text/common_text.dart';

class MyInformationScreen extends StatelessWidget {
  const MyInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CommonText(
            fontSize: 18,
            color: AppColors.white,
            maxLines: 2,
            fontWeight: FontWeight.w700,
            text: AppString.myInformationAuthorizations),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            10.height,
            Item(
              title: AppString.systemPermissions,
              onTap: OtherHelper.openSystemSetting,
            ),
            Item(
              title: AppString.authorization,
            ),
            Item(
              title: AppString.personalizedAdvertising,
            ),
            Item(
              title: AppString.viewAndExportMyInformation,
            ),
          ],
        ),
      ),
    );
  }
}
