import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/methods.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/item_details_texts/item_details_all_texts.dart';
import 'package:flutter/material.dart';

class ItemDetailsRatingSection extends StatefulWidget{
  final int rating;
  const ItemDetailsRatingSection({required this.rating, super.key});

  @override
  State<ItemDetailsRatingSection> createState() => _ItemDetailsRatingSectionState();
}

class _ItemDetailsRatingSectionState extends State<ItemDetailsRatingSection> {

  late List<Widget> stars;

  @override
  void initState(){
    super.initState();
    // rating method is calling
    stars = Methods.ratingMethod(widget.rating);
  }

  @override
  Widget build(BuildContext context){
    return Row(children: [
      // stars
      Row(
          children: stars.map((item)=>item).toList()
  ),
      const SizedBox(width: 5),
      Text(ItemDetailsAllTexts.itemRating,
          style: AllTextStyles.seeAllTextStyle.copyWith(
              color: AllColors.headingBlack,
              fontWeight: FontWeight.bold)),
      const SizedBox(width: 5),
      Text(
          '(${ItemDetailsAllTexts.itemRatingCount} Reviews)',
          style: AllTextStyles.searchTextStyle
              .copyWith(color: AllColors.headingBlack))
    ]);
  }
}