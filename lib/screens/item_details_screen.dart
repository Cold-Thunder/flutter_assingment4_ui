import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/all_images/home_images/home_page_images.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:assignment4_ui/utiles/texts/item_details_texts/item_details_all_texts.dart';
import 'package:assignment4_ui/widgets/item_details/item_description_section.dart';
import 'package:assignment4_ui/widgets/item_details/item_details_rating_section.dart';
import 'package:assignment4_ui/widgets/item_details/item_price_section.dart';
import 'package:assignment4_ui/widgets/item_details/item_user_review_card.dart';
import 'package:assignment4_ui/widgets/item_details/reating_section.dart';
import 'package:assignment4_ui/widgets/item_details/top_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({super.key});
  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetailsScreen> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios,
                        color: AllColors.headingBlack, size: 22)),
                title: Text(ItemDetailsAllTexts.itemAppBarTitle,
                    style: AllTextStyles.headingTextStyle.copyWith(
                      fontSize: 20,
                    )),
                centerTitle: true,
                actions: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFav = !isFav;
                      });
                    },
                    child: SizedBox(
                        height: 18,
                        width: 18,
                        child: isFav
                            ? Icon(Icons.favorite,
                                size: 18, color: AllColors.favoriteRed)
                            : SvgPicture.asset(HomePageImages.heartIcon,
                                height: 18, width: 18)),
                  ),
                  const SizedBox(width: 15)
                ]),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          // top image section
                          SizedBox(
                              width: width, height: 250, child: TopImage()),
                          const SizedBox(height: 40),
                          // title section
                          SizedBox(
                              width: width * 0.7,
                              child: Text(ItemDetailsAllTexts.itemTitle,
                                  style: AllTextStyles.headingTextStyle
                                      .copyWith(fontSize: 22))),
                          const SizedBox(height: 10),
                          // rating section
                          const ItemDetailsRatingSection(rating: 4),
                          const SizedBox(height: 10),
                          // price section
                          ItemPriceSection(
                              price: ItemDetailsAllTexts.itemPrice,
                              prePrice: ItemDetailsAllTexts.itemPrePrice,
                              isOffer: true),
                          const SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: AllColors.searchTextGrey,
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // description section
                          ItemDescriptionSection(),
                          const SizedBox(
                            height: 20,
                          ),
                          Divider(
                            color: AllColors.searchTextGrey,
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            ItemDetailsAllTexts.reviewAndRating,
                            style: AllTextStyles.headingTextStyle
                                .copyWith(fontSize: 18),
                          ),
                          const SizedBox(height: 20),
                          // rating section Starts here
                          const RatingSection(rating: 4),
                          const SizedBox(height: 20),
                          // users review section
                          const SizedBox(
                            height: 250,
                            child: ItemUserReviewCard(rating: 3)
                          )
                        ])))));
  }
}
