import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List selectedOption = [
    AppString.english,
    AppString.chinese,
  ];

  String reason = AppString.english;

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
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.language),
      ),
      body: ListView.builder(
        itemCount: selectedOption.length,
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
