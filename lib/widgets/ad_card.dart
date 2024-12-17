import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/all_images/home_images/home_page_images.dart';
import 'package:assignment4_ui/utiles/styles/buttons_style/buttons_style.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/home_page_texts/home_page_all_texts.dart';
import 'package:flutter/material.dart';

class AdCard extends StatelessWidget{
  const AdCard({super.key});
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 177,
      decoration: BoxDecoration(
        color: AllColors.adBackGreen,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        children: [
          // right image section
          Positioned(
            top: 35,
              left: width*0.5,
              child: SizedBox(
            child: Image.asset(HomePageImages.bannerAdImg)
          )),
          // left text section
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width*0.55,
                  child: Text(
                    HomePageAllTexts.adHeading,
                    style: AllTextStyles.headingTextStyle.copyWith(
                      fontSize: 20
                    )
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: (){},
                    style: ButtonsStyle.elevatedButtonStyle,
                    child: Text(
                      HomePageAllTexts.showNow,
                      style: AllTextStyles.buttonTextStyle
                    )
                )
              ]
            )
          )
        ],
      )
    );
  }
}