import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'type_icon.dart';
import 'constants.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<InputPage> {
  Gender? selectedGender;
  int height = 160 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    colour: selectedGender == Gender.Male
                        ? kActivebuttoncolor
                        : kInactivebuttoncolor,
                    Child: TypeFormat(
                      iconn: FontAwesomeIcons.mars,
                      type: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    colour: selectedGender == Gender.Female
                        ? kActivebuttoncolor
                        : kInactivebuttoncolor,
                    Child: TypeFormat(
                      iconn: FontAwesomeIcons.venus,
                      type: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kInactivebuttoncolor,
              Child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    activeColor: kBottombuttoncolor,
                    inactiveColor: Color(0xFF8D8E98),
                    min: 50.0,
                    max: 250.0,
                    onChanged: (double d){
                      setState(() {
                        height = d.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: kInactivebuttoncolor),
                ),
                Expanded(
                  child: ReusableCard(colour: kInactivebuttoncolor),
                ),
              ],
            ),
          ),
          Container(
            color: kBottombuttoncolor,
            height: kBottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
