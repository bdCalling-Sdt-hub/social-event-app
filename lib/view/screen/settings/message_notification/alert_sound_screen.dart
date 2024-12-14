import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

class AlertSoundScreen extends StatefulWidget {
  const AlertSoundScreen({super.key});

  @override
  State<AlertSoundScreen> createState() => _AlertSoundScreenState();
}

class _AlertSoundScreenState extends State<AlertSoundScreen> {
  List selectedOption = [
    "Auto",
    "Alert Sound 1",
    "Alert Sound 2",
    "Alert Sound 3",
    "Alert Sound 4",
    "Alert Sound 5",
    "Alert Sound 6",
    "Alert Sound 7",
  ];

  String reason = "Auto";

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
        title: CommonText(
          text: AppString.alertSound,
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
    );
  }
}
