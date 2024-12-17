import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/item_details_texts/item_details_all_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDescriptionSection extends StatefulWidget {
  @override
  State<ItemDescriptionSection> createState()=> _ItemDesSecState();
}

class _ItemDesSecState extends State<ItemDescriptionSection>{

  late bool showMore;

  @override
  void initState(){
    super.initState();
    if(ItemDetailsAllTexts.itemDes.length > 150){
      setState((){
        showMore = true;
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () {
        setState((){
          showMore = !showMore;
        });
      },
      // using see more in flutter with substring
      child: SizedBox(
        child: RichText(
          text: TextSpan(
              text: showMore == true ?
              ItemDetailsAllTexts.itemDes.substring(0, 150)
                  : ItemDetailsAllTexts.itemDes,
              style: AllTextStyles.searchTextStyle.copyWith(
                  color: AllColors.headingBlack,
                  fontSize: 14
              ),
              children: [
                TextSpan(
                    text: showMore == true ? ItemDetailsAllTexts.readMore : '',
                    style: AllTextStyles.seeAllTextStyle.copyWith(
                        fontSize: 14
                    )
                )
              ]
          ),
        ),
      ),
    );
  }
}