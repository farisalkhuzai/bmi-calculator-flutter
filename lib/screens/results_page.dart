import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
    ResultsPage({required this.bmiResult,required this.resultText, required this.interpretation});
    final String bmiResult;
    final String resultText;
    final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            child: Text('YOUR RESULT',style: kTitleStyle,),
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
          )),
          Expanded(flex: 5,
          child: ReuseableCard(colors1: kInactaiveCardsColor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Text(resultText.toUpperCase(),style: kResultsStyle,),
              Text(bmiResult,style: kBMIStyle,),
              Text(interpretation,
                textAlign: TextAlign.center,
                style: kBodyTextStyle,)
            ],
          ),
          ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE', onTap: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
