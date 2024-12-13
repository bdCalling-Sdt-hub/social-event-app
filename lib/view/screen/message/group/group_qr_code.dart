import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';

class GroupQrCode extends StatelessWidget {
  const GroupQrCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
          text: AppString.groupQRCode,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: Column(
        children: [
          const CommonText(
            text: AppString.groupQrCodeDetails,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            maxLines: 3,
            left: 20,
            right: 20,
            top: 52,
            bottom: 72,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(30)),
              child: QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 280,
                foregroundColor: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
