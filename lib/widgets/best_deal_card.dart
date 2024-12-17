import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/all_images/home_images/home_page_images.dart';
import 'package:assignment4_ui/utiles/modules/home_modules/best_deal_module.dart';
import 'package:assignment4_ui/utiles/styles/buttons_style/buttons_style.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/home_page_texts/home_page_all_texts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestDealCard extends StatefulWidget {
  final BestDealModule cardInfo;

  const BestDealCard({required this.cardInfo, super.key});
  @override
  State<BestDealCard> createState()=> _BestDealState();
}

class _BestDealState extends State<BestDealCard>{
  final double picCardWidth = 144;
  final double mainCardWith = 160;
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    BestDealModule cardInfo = widget.cardInfo;
    return Container(
      margin: const EdgeInsets.only(right: 15, bottom: 15),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      width: mainCardWith,
      height: 220,
      decoration: BoxDecoration(
        color: AllColors.appBarWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AllColors.shadowColor,
            offset: const Offset(0,5),
            spreadRadius: 3,
            blurRadius: 7
          ),
          BoxShadow(
            color: AllColors.appBarWhite,
              offset: const Offset(0,-4),
              spreadRadius: 3,
              blurRadius: 7
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image card
          Container(
            alignment: Alignment.center,
            width: picCardWidth,
            height: 110,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: AllColors.searchBarGrey,
                // color: Colors.red,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: picCardWidth - 55,
                  child: Image.asset(cardInfo.image, height: 90, width: 44)
                ),
                InkWell(
                    onTap: (){
                      setState((){
                        isFav = !isFav;
                      });
                    },
                    child: isFav == false ? SvgPicture.asset(HomePageImages.heartIcon,
                        height: 18, width: 18) : Icon(Icons.favorite, color: AllColors.favoriteColor, size: 18)
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // title is here
          Text(
              cardInfo.title,
              style: AllTextStyles.appBarTitleStyle.copyWith(
                fontSize: 14,
              )
          ),
          Text(
            cardInfo.sub,
            style: AllTextStyles.searchTextStyle.copyWith(fontSize: 14)
          ),
          // price section
          Row(
            children: [
              Text(
                  cardInfo.price,
                  style: AllTextStyles.appBarTitleStyle
              ),
              const SizedBox(width: 5),
              Text(
                cardInfo.prePrice,
                style: AllTextStyles.prePriceTextStyle
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: (){
                    if(kDebugMode){
                      print('added');
                    }
                  },
                  style: ButtonsStyle.elevatedButtonStyle,
                  child: Text(
                    HomePageAllTexts.add,
                    style: AllTextStyles.buttonTextStyle
                  )
              )
            ]
          )
        ],
      ),
    );
  }
}
