import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/all_images/home_images/home_page_images.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/home_page_texts/home_page_all_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarField extends StatelessWidget{
  TextEditingController controller = TextEditingController();

  SearchBarField({
    required this.controller,
    super.key});
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width*0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
          controller: controller,
        textAlignVertical: TextAlignVertical.center,
        style: AllTextStyles.searchTextStyle,
        cursorColor: AllColors.searchTextGrey,
        cursorHeight: 20,
        decoration: InputDecoration(
          hintText: HomePageAllTexts.search,
          hintStyle: AllTextStyles.searchTextStyle,
          filled: true,
          fillColor: AllColors.searchBarGrey,
          prefixIcon: InkWell(
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 24,
              width: 24,
              child: SvgPicture.asset(HomePageImages.searchIcon, height: 24, width: 24)
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: AllColors.transparent
            )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: AllColors.transparent
              )
          ),
        )
      )
    );
  }
}