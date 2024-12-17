import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/item_details_texts/item_details_all_texts.dart';
import 'package:flutter/cupertino.dart';

class ItemPriceSection extends StatelessWidget{
  final String price;
  final String prePrice;
  final bool isOffer;
  const ItemPriceSection({
    required this.price,
    required this.prePrice,
    required this.isOffer, super.key});

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Text(
            price,
            style: AllTextStyles.headingTextStyle.copyWith(
          fontSize: 22
        )),
        const SizedBox(width: 10),
        Text(
          prePrice,
          style: AllTextStyles.prePriceTextStyle.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.bold
          )
        ),
        const SizedBox(width: 20),
        // offer section
        isOffer ? Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            // height: 30,
          decoration: BoxDecoration(
            color: AllColors.filterGreen,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Text(
            ItemDetailsAllTexts.itemOffer,
            style: AllTextStyles.buttonTextStyle,)
        ) : const SizedBox()
      ]
    );
  }
}