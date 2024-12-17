import 'package:assignment4_ui/utiles/all_images/home_images/home_page_images.dart';
import 'package:flutter/cupertino.dart';

class TopImage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10),
      width: 120,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              HomePageImages.attaRiceImg,
          ),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}