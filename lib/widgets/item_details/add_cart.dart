import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/item_details_texts/item_details_all_texts.dart';
import 'package:flutter/material.dart';

class AddCart extends StatelessWidget {
  final int count;
  const AddCart({required this.count, super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 12
      ),
      height: 55,
      width: width * 0.58,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AllColors.filterGreen,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            ItemDetailsAllTexts.addCart,
            style: AllTextStyles.buttonTextStyle.copyWith(fontSize: 20),
          ),
          VerticalDivider(
            indent: 0,
            color: AllColors.appBarWhite,
            thickness: 2,
          ),
          Text(ItemDetailsAllTexts.itemPrice,
            style: AllTextStyles.buttonTextStyle.copyWith(
                fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
