import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:social_event/utils/app_string.dart';

class CommonPhoneNumberTextFiled extends StatelessWidget {
  const CommonPhoneNumberTextFiled({
    super.key,
    required this.controller,
    required this.countryChange,
  });

  final TextEditingController controller;
  final Function(Country value) countryChange;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller,
      onCountryChanged: countryChange,
      initialCountryCode: "BD",
      disableLengthCheck: true,
      style: const TextStyle(fontSize: 14),
      decoration: const InputDecoration(
        hintText: AppString.phoneNumber,
        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ),
      dropdownIcon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.black,
      ),
      flagsButtonMargin: const EdgeInsets.only(right: 8),
      textAlignVertical: TextAlignVertical.center,
      showDropdownIcon: true,
    );
  }
}
