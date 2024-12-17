import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/all_images/home_images/home_page_images.dart';
import 'package:assignment4_ui/widgets/search_bar_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarSection extends StatelessWidget{
  TextEditingController controller = TextEditingController();

  SearchBarSection({required this.controller, super.key});

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 50,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchBarField(controller: controller),
          const SizedBox(width: 10),
          // icon section
          InkWell(
            child: Container(
              padding: const EdgeInsets.all(11),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AllColors.filterGreen,
                borderRadius: BorderRadius.circular(10)
              ),
              child: SvgPicture.asset(HomePageImages.filterIcon, width: 24, height: 24)
            )
          )
        ]
      )
    );
  }
}