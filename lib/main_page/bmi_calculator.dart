import 'package:flutter/material.dart';
import 'package:provider/widgets/bottom_button.dart';
import 'package:provider/widgets/center_card.dart';
import '../spacing/height_space.dart';
import '../widgets/age_wieght_cards.dart';
import '../widgets/male_female_widgets.dart';
import 'package:provider/variables/variables.dart';



class BmiCalculator extends StatelessWidget {

  Variables variables = Variables();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',style: TextStyle(color: variables.whiteColor),),
        elevation: 0.0,
        backgroundColor: variables.backgroundColor,
        centerTitle: true,
      ),

      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context){
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: variables.backgroundColor,
        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              maleFemaleCards(context),
              SpaceH10(),
              centerCard(context),
              SpaceH10(),
              ageWeightCards(context),
              SpaceH10(),
              bottomButton(context),
            ],
          ),
        ),
      ),
    );
  }

}




