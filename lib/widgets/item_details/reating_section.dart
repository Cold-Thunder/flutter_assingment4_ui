import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/methods.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/item_details_texts/item_details_all_texts.dart';
import 'package:flutter/material.dart';

class RatingSection extends StatefulWidget{
  final int rating;
  const RatingSection({required this.rating, super.key});

  @override
  State<RatingSection> createState() => _RatingSectionState();
}

class _RatingSectionState extends State<RatingSection> {

  late List stars;

  @override
  void initState(){
    super.initState();
    stars = Methods.ratingMethod(widget.rating);
  }

  @override
  Widget build(BuildContext context){

    return Row(
      children: [
        Text(
          ItemDetailsAllTexts.itemRating,
          style: AllTextStyles.headingTextStyle.copyWith(
            fontSize: 24
          )
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: stars.map((item){
                return Icon(Icons.star, size: 24, color: AllColors.filterGreen);
              }).toList(),
            ),
            Text('${ItemDetailsAllTexts.totalReviewCount} Reviews',
              style: AllTextStyles.searchTextStyle.copyWith(
                fontSize: 16
              )
            )
          ],
        )
      ],
    );
  }
}