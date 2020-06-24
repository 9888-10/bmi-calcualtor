import 'package:flutter/material.dart';
import 'package:provider/variables/variables.dart';

Widget bottomButton(BuildContext context){

  Variables variables  = Variables();
  final cardHeight = MediaQuery.of(context).size.height * 0.15;
  final cardsIconsize = MediaQuery.of(context).size.height * 0.04;


  return Container(
    height: cardHeight,
    width: double.infinity,
    decoration: BoxDecoration(
      color: variables.buttomColor,
    ),
    child: Center(
      child: Text('CALCULATE',style: TextStyle(color: variables.whiteColor,fontSize: cardsIconsize,fontWeight: variables.cardsfornWeight),),
    ),
  );
}