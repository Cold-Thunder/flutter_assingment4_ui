import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/home_page_texts/home_page_all_texts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget{
  // final Widget gotoscreen;

  // const SeeAllButton({required this.gotoscreen, super.key});
  const SeeAllButton({super.key});

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        if(kDebugMode){
          print('see all');
        }
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        child: Text(
          HomePageAllTexts.seeAll,
          style: AllTextStyles.seeAllTextStyle
        )
      ),
    );
  }
}