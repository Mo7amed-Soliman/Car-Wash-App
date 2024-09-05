import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const TextStyle openSansRegular18 = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Color(0xff00dcfe),
        fontFamily: kOpenSans,
      ),
      openSansRegular20 = TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: kOpenSans,
      ),
      openSansMedium20 = TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: kOpenSans,
      ),
      openSansMedium25 = TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        fontFamily: kOpenSans,
      ),
      openSansSemiBold18 = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: kOpenSans,
      ),
      openSansSemiBold22 = TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        fontFamily: kOpenSans,
      ),
      openSansBold30 = TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: kOpenSans,
      );
}
