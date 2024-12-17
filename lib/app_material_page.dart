import 'package:assignment4_ui/screens/home_screen.dart';
import 'package:assignment4_ui/screens/item_details_screen.dart';
import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:assignment4_ui/utiles/texts/home_page_texts/home_page_all_texts.dart';
import 'package:flutter/material.dart';

class AppMaterialPage extends StatelessWidget{
  const AppMaterialPage({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: HomePageAllTexts.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AllColors.appBarWhite,
        appBarTheme: AppBarTheme(
          backgroundColor: AllColors.appBarWhite,
          iconTheme: IconThemeData(
            color: AllColors.headingBlack
          )
        )
      ),
      routes: {
        '/': (context)=>HomeScreen(),
        '/item_details': (context)=> ItemDetailsScreen()
      },
      initialRoute: '/item_details'
    );
  }
}