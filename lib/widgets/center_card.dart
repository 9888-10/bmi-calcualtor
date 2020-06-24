import 'package:flutter/material.dart';
import 'package:provider/variables/variables.dart';


Widget centerCard(BuildContext context){

  final cardWidth = MediaQuery.of(context).size.width;
  final cardHeight = MediaQuery.of(context).size.height * 0.28;
  final cardsIconsize = MediaQuery.of(context).size.height * 0.09;
  Variables variables = Variables();

  return Card(
    child: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('HEIGHT',style: TextStyle(color: variables.cardstextColor),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('181', style: TextStyle(fontSize: cardsIconsize,color: variables.whiteColor,fontWeight: variables.cardsfornWeight),),
              Text('cm', style: TextStyle(color: variables.whiteColor),),
            ],
          )
        ],
      ),

      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
          color: variables.cardsColor
      ),
    ),
  );
}