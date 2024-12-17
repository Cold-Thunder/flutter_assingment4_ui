import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/models/home_modules/category_card_module.dart';
import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final CategoryCardModule _cardInfo;

  const CategoryCard({required CategoryCardModule cardInfo, super.key}):
  _cardInfo = cardInfo;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if (kDebugMode) {
          print(_cardInfo);
        }
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10, top: 10),
        padding: const EdgeInsets.all(5),
        height: 130,
        width: 76,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 76,
              width: 76,
              decoration: BoxDecoration(
                color: AllColors.searchBarGrey,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset(_cardInfo.image),
            ),
            const SizedBox(height: 10),
            Text(
              _cardInfo.title,
              style: AllTextStyles.headingTextStyle.copyWith(
                fontSize: 12
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
