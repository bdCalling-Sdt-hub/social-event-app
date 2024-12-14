import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:social_event/view/screen/message/widget/bottom_sheet.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/button/common_button.dart';
import '../../component/text/common_text.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  List selectedOption = [
    "Reason 1",
    "Reason 2",
    "Reason 3",
    "Reason 4",
    "Reason 5",
    "Reason 6",
    "Reason 7",
  ];

  String reason = "Reason 1";

  setSelectReason(value) {
    print(value);
    reason = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title:  CommonText(
          text: "Report".tr,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () => setSelectReason(selectedOption[index]),
                child: Row(
                  children: [
                    Radio(
                        value: selectedOption[index],
                        groupValue: reason,
                        activeColor: AppColors.primaryColor,
                        onChanged: setSelectReason),
                    CommonText(text: selectedOption[index])
                  ],
                ),
              ),
              const Divider()
            ],
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CommonButton(
          titleText: "Report".tr,
          onTap: () => successBottomSheet("Report Submitted".tr),
        ),
      ),
    );
  }
}
