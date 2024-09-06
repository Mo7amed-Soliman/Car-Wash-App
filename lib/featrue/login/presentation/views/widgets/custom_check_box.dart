import 'package:car_wash_app/core/helpers/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      visualDensity: const VisualDensity(
        horizontal: -4.0,
        vertical: -4.0,
      ),
      activeColor: AppColors.primaryColor,
      side: const BorderSide(
        color: Colors.grey,
        strokeAlign: 4.0,
        width: 2.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      value: false,
      onChanged: (newValue) {},
    );
  }
}
