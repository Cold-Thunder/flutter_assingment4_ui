
import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class Methods{
  static List<Widget> ratingMethod(int rating){
    List<Widget> stars = [];
    for(int i = 1; i <= 5; i++){
      if(i <= rating){
        stars.add(Icon(Icons.star, size: 22, color: AllColors.filterGreen));
      }else if(i > rating){
        stars.add(Icon(Icons.star_border_outlined, size: 22, color: AllColors.abbBarSubGrey));
      }
    }
    return stars;
  }
}