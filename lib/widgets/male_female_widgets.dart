import 'package:flutter/material.dart';
import '../spacing/height_space.dart';
import 'package:provider/variables/variables.dart';


Widget maleFemaleCards(BuildContext context) {

  final cardWidth = MediaQuery.of(context).size.width /2.3;
  final cardHeight = MediaQuery.of(context).size.height * 0.28;
  final cardsIconsize = MediaQuery.of(context).size.height * 0.09;
  Variables variables = Variables();


  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Card(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.swap_horizontal_circle,
                color: variables.whiteColor,
                size: cardsIconsize,
              ),
              SpaceH10(),
              Text('MALE',style: TextStyle(color: variables.cardstextColor),),
            ],
          ),

          width: cardWidth,
          height: cardHeight,
          decoration: BoxDecoration(
              color: variables.cardsColor
          ),
        ),
      ),

      Card(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add_a_photo,
                color: variables.whiteColor,
                size: cardsIconsize,
              ),
              SpaceH10(),
              Text('FEMALE',style: TextStyle(color: variables.cardstextColor),),
            ],
          ),
          width: cardWidth,
          height: cardHeight,
          decoration: BoxDecoration(
              color: variables.cardsColor
          ),
        ),
      )
    ],
  );
}
