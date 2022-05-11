import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';
import 'bottom_button.dart';


class ResultsPage extends StatelessWidget {

   ResultsPage({required this.bmiResult, required this.resultText, required this.feedback});

  final String bmiResult;
  final String resultText;
  final String feedback;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text('Your Result', style: kTitleTextStyle),
          ),
          Expanded(child: Row(
            children: [
             Expanded(child: ReusableCard(
               colour: kActiveCardColor,
               cardChild: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text(resultText.toUpperCase(), style: kResultTextStyle,),
                   Text(bmiResult, style: kBMITextStyle,),
                   Text(feedback, style: kBodyTextStyle,
                   textAlign: TextAlign.center,)
                 ],
               ),
             ),
             ),

            ],
          ),
          ),
          BottomButton(label: 'RE-CALCULATE', onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage())),),
        ],
      ),
    );

  }
}
