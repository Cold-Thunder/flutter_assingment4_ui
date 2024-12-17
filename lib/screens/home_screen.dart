import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/all_images/home_images/home_page_images.dart';
import 'package:assignment4_ui/utiles/models/home_modules/best_deal_module.dart';
import 'package:assignment4_ui/utiles/models/home_modules/category_card_module.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/home_page_texts/home_page_all_texts.dart';
import 'package:assignment4_ui/widgets/ad_card.dart';
import 'package:assignment4_ui/widgets/best_deal_card.dart';
import 'package:assignment4_ui/widgets/category_card.dart';
import 'package:assignment4_ui/widgets/heading.dart';
import 'package:assignment4_ui/widgets/search_bar_section.dart';
import 'package:assignment4_ui/widgets/see_all_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget{
  final TextEditingController _controller = TextEditingController();
  final List<CategoryCardModule> _categoryList = HomePageAllTexts.categoryInfos;
  final List<BestDealModule> _bestDealList = HomePageAllTexts.bestDeals;

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: AllColors.appBarWhite,
        appBar: PreferredSize(
          preferredSize:const Size.fromHeight(60),
          child: AppBar(
            // leading section
            leading: InkWell(
              onTap: (){},
              child: Container(
                margin: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                height: 24,
                width: 24,
                child: SvgPicture.asset(HomePageImages.locationIcon, height: 24, width: 24,)
              )
            ),
            leadingWidth: 40,
            titleSpacing: 8,
            // title section
            title: Container(
              margin: const EdgeInsets.only(left: 0),
              // color: Colors.red,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // heading
                  Row(
                    children: [
                      Text(
                          HomePageAllTexts.home,
                          style: AllTextStyles.appBarTitleStyle
                      ),
                      const SizedBox(width:5),
                      InkWell(
                        onTap: (){},
                        child: SvgPicture.asset(HomePageImages.downIcon, height: 22, width: 22)
                      )
                    ]
                  ),
                  // location section
                  Text(
                    HomePageAllTexts.location,
                    style: AllTextStyles.appBarSubStyle
                  )
                ],
              )
            ),
            actions: [
              InkWell(
                onTap: (){},
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(
                    HomePageImages.bagIcon
                  )
                )
              ),
              const SizedBox(width: 15)
            ]
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                // search bar section
                SearchBarSection(controller: _controller),
                const SizedBox(height: 20),
                // categories section heading
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading(heading: HomePageAllTexts.shopCategory),
                    const SeeAllButton(),
                  ],
                ),
                const SizedBox(height: 20),
                // categories section
                Wrap(
                  children: _categoryList.map((item){
                    return CategoryCard(cardInfo: item,);
                  }).toList(),
                ),
                // ad section
                const SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: AdCard(),
                ),
                const SizedBox(height: 20),
                // best deal heading section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading(heading: HomePageAllTexts.bestDeal),
                    const SeeAllButton(),
                  ],
                ),
                const SizedBox(height: 20),
                // best deal section
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: _bestDealList.length,
                    itemBuilder: (context, index){
                        return BestDealCard(cardInfo: _bestDealList[index]);
                    }
                  )
                ),
                const SizedBox(height: 30)
              ],
            ),
          )
        )
      ),
    );
  }
}

// tooltip and snackbar topic 