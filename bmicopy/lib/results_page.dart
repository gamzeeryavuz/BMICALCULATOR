import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'resuable_card.dart';

class ResultsPage extends StatelessWidget{

  ResultsPage({required this.bmiResult,required this.interpretation,required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title:Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Expanded(child:
            Container(
              padding:EdgeInsets.all(15.0),
              alignment:Alignment.bottomLeft,

              child:Text(
                'YOUR RESULT',style: kTitleTextStyle,


              ),



            ),
            ),
            Expanded(
              flex:5,
              child: ReusableCard(
                colour:kAactiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment:CrossAxisAlignment.center ,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style:kBMITextStyle,

                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),

                  ],
                ), onPress:(){

              },
              ),
            ),

            BottomButton(
              buttonTitle:'RE-CALCULATE' ,
              onTap:(){
                Navigator.pop(context);

              },
            )
          ]
        )

      );
  }

}