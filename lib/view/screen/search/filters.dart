import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_event/helpers/my_extension.dart';
import 'package:social_event/view/component/button/common_button.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/text/common_text.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  String seletedAge = "";
  String seletedDistance = "";

  List seletedCategories = [];

  List age = const [
    "1-3",
    "4-6",
    "7-12",
    "13-17",
    "18-35",
    "36-55",
    "56-70",
    "All Ages",
  ];

  List categories = const [
    "Social ",
    "Education",
    "Entertain",
    "Sports",
    "Tech",
    "Expo",
    "Leisure",
    "Brands",
  ];
  List distance = const [
    "30m",
    "40m",
    "50m",
    "60m",
    "1km",
    "2km",
    "3km",
    "5km",
  ];

  RangeValues _currentRangeValues = const RangeValues(0, 100);

  selectingCategories(item) {
    if (seletedCategories.contains(item)) {
      seletedCategories.remove(item);
      setState(() {});
      return;
    }
    seletedCategories.add(item);
    setState(() {});
  }

  selectedAge(item) {
    seletedAge = item;
    setState(() {});
  }

  selectedDistance( item) {
    seletedDistance = item;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const CommonText(
          text: AppString.filters,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const CommonText(
              text: AppString.ageGroup,
              fontWeight: FontWeight.w700,
              bottom: 10,
              top: 30,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: age.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisExtent: 30,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12),
              itemBuilder: (context, index) {
                var item = age[index];
                return Container(
                  decoration: BoxDecoration(
                      color: seletedAge == item
                          ? AppColors.primaryColor
                          : AppColors.transparent,
                      border: Border.all(
                          color: seletedAge == item
                              ? AppColors.transparent
                              : AppColors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () => selectedAge(index),
                    child: CommonText(
                      text: age[index],
                      color: seletedAge == item
                          ? AppColors.white
                          : AppColors.black,
                    ).center,
                  ),
                );
              },
            ),
            const CommonText(
              text: AppString.categories,
              fontWeight: FontWeight.w700,
              bottom: 10,
              top: 30,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisExtent: 30,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12),
              itemBuilder: (context, index) {
                var item = categories[index];
                return Container(
                  decoration: BoxDecoration(
                      color: seletedCategories.contains(item)
                          ? AppColors.primaryColor
                          : AppColors.transparent,
                      border: Border.all(
                          color: seletedCategories.contains(item)
                              ? AppColors.transparent
                              : AppColors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () => selectingCategories(item),
                    child: CommonText(
                      text: item,
                      color: seletedCategories.contains(item)
                          ? AppColors.white
                          : AppColors.black,
                    ).center,
                  ),
                );
              },
            ),
            const CommonText(
              text: AppString.pricing,
              top: 20,
            ).start,
            RangeSlider(
              values: _currentRangeValues,
              min: 0,
              max: 100,
              divisions: 100,
              activeColor: AppColors.primaryColor,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            const CommonText(
              text: AppString.distance,
              top: 20,
              bottom: 12,
            ).start,
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: distance.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisExtent: 30,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12),
              itemBuilder: (context, index) {
                var item = distance[index];
                return Container(
                  decoration: BoxDecoration(
                      color: seletedDistance == item
                          ? AppColors.primaryColor
                          : AppColors.transparent,
                      border: Border.all(
                          color: seletedDistance == item
                              ? AppColors.transparent
                              : AppColors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () => selectedDistance(item),
                    child: CommonText(
                      text: item,
                      color: seletedDistance == item
                          ? AppColors.white
                          : AppColors.black,
                    ).center,
                  ),
                );
              },
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: CommonButton(
                    onTap: () => Get.back(),
                    titleText: AppString.clearFilters,
                    buttonHeight: 50,
                    buttonColor: AppColors.transparent,
                    titleColor: AppColors.primaryColor,
                  ),
                ),
                20.width,
                Expanded(
                  child: CommonButton(
                    onTap: () => Get.back(),
                    titleText: AppString.applyFilters,
                    buttonHeight: 50,
                  ),
                ),
              ],
            ),
            30.height
          ],
        ),
      ),
    );
  }
}
