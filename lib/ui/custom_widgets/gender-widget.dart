import 'package:flutter/material.dart';
import 'package:provider/constants/colors.dart';
import 'vertical_space.dart';

class GenderWidget extends StatelessWidget {
  final icon;
  final text;
  GenderWidget({this.icon, this.text});


  @override
  Widget build(BuildContext context) {

    final cardWidth = MediaQuery.of(context).size.width /2.3;
    final cardHeight = MediaQuery.of(context).size.height * 0.28;
    final cardsIconSize = MediaQuery.of(context).size.height * 0.09;

    return Card(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon,
              color: whiteColor,
              size: cardsIconSize,
            ),
            VerticalSpaceH10(),
            Text(text, style: TextStyle(color: cardsTextColor),),
          ],
        ),

        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
            color: cardsColor
        ),
      ),
    );
  }
}
