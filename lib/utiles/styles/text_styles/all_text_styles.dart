import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class AllTextStyles {
  static TextStyle appBarTitleStyle = TextStyle(
      fontSize: 18,
      color: AllColors.headingBlack,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400);

  static TextStyle appBarSubStyle = TextStyle(
      fontSize: 12,
      color: AllColors.abbBarSubGrey,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400);

  static TextStyle searchTextStyle = TextStyle(
      fontSize: 16,
      color: AllColors.searchTextGrey,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400);

  static TextStyle headingTextStyle = TextStyle(
      fontSize: 16,
      color: AllColors.headingBlack,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700);

  static TextStyle seeAllTextStyle = TextStyle(
      fontSize: 16,
      color: AllColors.filterGreen,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400);

  static TextStyle buttonTextStyle = TextStyle(
      fontSize: 14,
      color: AllColors.appBarWhite,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400);

  static TextStyle prePriceTextStyle = TextStyle(
      fontSize: 18,
      color: AllColors.searchTextGrey,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.lineThrough,
      decorationColor: AllColors.searchTextGrey,
      decorationThickness: 2);
}
