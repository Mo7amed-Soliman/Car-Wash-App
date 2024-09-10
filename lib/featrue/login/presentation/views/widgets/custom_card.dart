import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.icon,
    this.onTap,
  });
  final String icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 55,
            vertical: 12,
          ),
          child: SvgPicture.asset(
            icon,
            height: 50,
            width: 50,
          ),
        ),
      ),
    );
  }
}
