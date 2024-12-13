import 'package:flutter/material.dart';
import 'package:social_event/view/screen/search/search_location.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/map/google_map.dart';
import '../../component/text/common_text.dart';

class EventNearScreen extends StatelessWidget {
  const EventNearScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
          text: AppString.eventsNearYou,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: Column(
        children: [
          searchLocation(),
          Expanded(
            child: ShowGoogleMap(
              onTapLatLong: (value) => print(value),
            ),
          ),
        ],
      ),
    );
  }
}
