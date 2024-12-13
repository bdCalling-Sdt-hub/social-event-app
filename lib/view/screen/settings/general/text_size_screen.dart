import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

class TextSizeScreen extends StatefulWidget {
  const TextSizeScreen({super.key});

  @override
  State<TextSizeScreen> createState() => _TextSizeScreenState();
}

class _TextSizeScreenState extends State<TextSizeScreen> {
  List selectedOption = [
    AppString.small,
    AppString.normal,
    AppString.large,
  ];

  String reason = AppString.normal;

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
        title: const CommonText(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            text: AppString.textSize),
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
