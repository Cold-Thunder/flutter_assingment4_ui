import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/all_images/home_images/home_page_images.dart';
import 'package:assignment4_ui/utiles/methods.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/item_details_texts/item_details_all_texts.dart';
import 'package:flutter/material.dart';

class ItemUserReviewCard extends StatefulWidget{
  final int rating;
  const ItemUserReviewCard({required this.rating, super.key});


  @override
  State<ItemUserReviewCard> createState() => _ItemUserReviewCardState();
}

class _ItemUserReviewCardState extends State<ItemUserReviewCard> {

  late List<Widget> stars;

  @override
  void initState(){
    super.initState();
    // rating method is calling
    stars = Methods.ratingMethod(widget.rating);
  }

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(HomePageImages.man),
                    fit: BoxFit.cover
                  )
                )
              ),
              const SizedBox(width: 10),

              // user name section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(ItemDetailsAllTexts.userName,
                         style: AllTextStyles.headingTextStyle.copyWith(
                           fontWeight: FontWeight.w600,
                           fontSize: 18
                         )),
                  Text(ItemDetailsAllTexts.date,
                    style: AllTextStyles.searchTextStyle
                  ),

                ]
              ),
              const Spacer(),
              Row(
                children: stars.map((item)=>item).toList()
              ),
            ],
          ),
          // review texts
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(ItemDetailsAllTexts.review,
                style: AllTextStyles.searchTextStyle.copyWith(
                    color: AllColors.headingBlack
                )),
          )

        ],
      ),
    );
  }
}