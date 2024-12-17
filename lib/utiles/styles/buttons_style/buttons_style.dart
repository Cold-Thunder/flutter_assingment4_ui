import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsStyle{
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AllColors.filterGreen,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    )
  );
}