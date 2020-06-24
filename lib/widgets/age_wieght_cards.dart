import 'package:flutter/material.dart';
import 'package:provider/variables/variables.dart';


Widget ageWeightCards(BuildContext context){

  final cardWidth = MediaQuery.of(context).size.width /2.3;
  final cardHeight = MediaQuery.of(context).size.height * 0.28;
  final cardsIconsize = MediaQuery.of(context).size.height * 0.07;
  Variables _variables = Variables();

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Card(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('WEIGHT',style: TextStyle(color: _variables.cardstextColor),),
              Text('63', style: TextStyle(fontSize: cardsIconsize,color: _variables.whiteColor,fontWeight: _variables.cardsfornWeight),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: _variables.addSubCircleColor,
                    child: Icon(Icons.remove,color: _variables.whiteColor)
                  ),
                  SizedBox(width: 10.0,),
                  CircleAvatar(
                      backgroundColor: _variables.addSubCircleColor,
                      child: Icon(Icons.add,color: _variables.whiteColor)
                  )
                ],
              )
            ],
          ),

          width: cardWidth,
          height: cardHeight,
          decoration: BoxDecoration(
              color: _variables.cardsColor
          ),
        ),
      ),

      Card(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('AGE',style: TextStyle(color: _variables.cardstextColor),),
              Text('30', style: TextStyle(fontSize: cardsIconsize,color: _variables.whiteColor,fontWeight: _variables.cardsfornWeight),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                      backgroundColor: _variables.addSubCircleColor,
                      child: Icon(Icons.remove,color: _variables.whiteColor)
                  ),
                  SizedBox(width: 10.0,),
                  CircleAvatar(
                      backgroundColor: _variables.addSubCircleColor,
                      child: Icon(Icons.add,color: _variables.whiteColor)
                  )
                ],
              )
            ],
          ),

          width: cardWidth,
          height: cardHeight,
          decoration: BoxDecoration(
              color: _variables.cardsColor
          ),
        ),
      ),
    ],
  );
}