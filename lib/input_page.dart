import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'type_icon.dart';

const CardColor = Color(0xFF1D1E33);
const BottomConatinerColor = Color(0xFFEB1555);
const BottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: CardColor,
                    Child: TypeFormat(
                      iconn: FontAwesomeIcons.mars,
                      type:
                      'MALE',),
                  ),
                ),
                Expanded(
                  child: ReusableCard(colour: CardColor,Child:TypeFormat(
                    iconn: FontAwesomeIcons.venus,
                    type:
                    'FEMALE',) ,),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: CardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: CardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: CardColor),
                ),
              ],
            ),
          ),
          Container(
            color: BottomConatinerColor,
            height: BottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}


