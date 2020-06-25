import 'package:flutter/material.dart';
import 'package:provider/constants/colors.dart';

class ageWeightCards extends StatelessWidget {
  final number;
  final text;
  ageWeightCards({this.number, this.text});


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
            Text(text ,style: TextStyle(color: cardsTextColor),),
            Text(number , style: TextStyle(fontSize: cardsIconSize,color: whiteColor,fontWeight: cardsFornWeight),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: addSubCircleColor,
                    child: Icon(Icons.remove,color: whiteColor)
                ),
                SizedBox(width: 10.0,),
                CircleAvatar(
                    backgroundColor: addSubCircleColor,
                    child: Icon(Icons.add,color: whiteColor)
                )
              ],
            )
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
