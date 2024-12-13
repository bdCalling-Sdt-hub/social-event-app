import 'package:flutter/material.dart';
import 'package:social_event/helpers/my_extension.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  List selectedOption = [
    AppString.autoApprove,
  ];

  String reason = AppString.autoApprove;

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
            text: AppString.comment),
      ),
      body: Column(
        children: [
          const CommonText(
            text: AppString.preApproval,
            fontSize: 15,
            left: 20,
            top: 20,
            fontWeight: FontWeight.w400,
          ).start,
          Expanded(
            child: ListView.builder(
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
          ),
        ],
      ),
    );
  }
}
