import 'package:assignment4_ui/utiles/styles/text_styles/all_text_styles.dart';
import 'package:flutter/cupertino.dart';

class Heading extends StatelessWidget{
  final String heading;

  const Heading({required this.heading, super.key});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      child: Text(
        heading,
        style: AllTextStyles.headingTextStyle
      )
    );
  }
}