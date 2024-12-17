import 'package:assignment4_ui/utiles/all_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
              Icons.arrow_back_ios,
              color: AllColors.headingBlack,
            size: 22
          )
        ),
      ),
      body: Container(

      )
    ));
  }
}
