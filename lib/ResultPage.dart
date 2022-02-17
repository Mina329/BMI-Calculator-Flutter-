import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'BottomButton.dart';

class ResultPage extends StatelessWidget {
  final String bme ;
  final String getresult ;
  final String getdescription;
  ResultPage({ required this.bme , required this.getresult , required this.getdescription});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Your Result',
              style: kNumberStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActivebuttoncolor,
              Child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getresult,
                    style: kGreenTextStyle,
                  ),
                  Text(
                    bme,
                    style: kBMIResult,
                  ),
                  Text(
                    getdescription,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
