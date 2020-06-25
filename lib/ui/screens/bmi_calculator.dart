import 'package:flutter/material.dart';
import 'package:provider/constants/colors.dart';
import '../custom_widgets/age_weight_cards.dart';
import '../custom_widgets/gender-widget.dart';
import '../custom_widgets/vertical_space.dart';

class BmiCalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',style: TextStyle(color: whiteColor),),
        elevation: 0.0,
        backgroundColor: backgroundColor,
        centerTitle: true,
      ),

      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context){
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              genderCards(context),
              VerticalSpaceH10(),
              centerCard(context),
              VerticalSpaceH10(),
              ageWeightCard(context),
              VerticalSpaceH10(),
              calculateButton(context),
            ],
          ),
        ),
      ),
    );
  }

}

Widget genderCards(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[

      ///
      /// MALE WIDGET
      ///
      GenderWidget(icon: Icon(Icons.person), text: 'MALE',),

      ///
      /// FEMALE WIDGET
      ///
      GenderWidget(icon: Icon(Icons.perm_identity), text: 'FEMALE',),
    ],
  );
}

///
/// Center Card Widget
///
Widget centerCard(BuildContext context){

  final cardWidth = MediaQuery.of(context).size.width;
  final cardHeight = MediaQuery.of(context).size.height * 0.28;
  final cardsIconSize = MediaQuery.of(context).size.height * 0.09;

  return Card(
    child: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('HEIGHT',style: TextStyle(color: cardsTextColor),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('181', style: TextStyle(fontSize: cardsIconSize,color: whiteColor,fontWeight: cardsFornWeight),),
              Text('cm', style: TextStyle(color: whiteColor),),
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

///
/// Gender Weight and Age Cards Widgets
///
Widget ageWeightCard (BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      ///
      /// Weight Card
      /// 
      ageWeightCards(number: '63',text: 'WEIGHT',),

      ///
      /// Age Card
      /// 
      ageWeightCards(number: '30',text: 'AGE',),
    ],
  );
}

///
/// Bottom Calculation  Button Widget
///
Widget calculateButton(BuildContext context){

  final cardHeight = MediaQuery.of(context).size.height * 0.15;
  final cardsIconSize = MediaQuery.of(context).size.height * 0.04;

  ///
  /// Calculate Button
  /// 
  return Container(
    height: cardHeight,
    width: double.infinity,
    decoration: BoxDecoration(
      color: buttomColor,
    ),
    child: Center(
      child: Text('CALCULATE',style: TextStyle(color: whiteColor,fontSize: cardsIconSize,fontWeight: cardsFornWeight),),
    ),
  );
}


