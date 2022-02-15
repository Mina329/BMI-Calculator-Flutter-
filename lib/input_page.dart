import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'type_icon.dart';

const bottombuttoncolor =Color(0xFFEB1555) ;
const activebuttoncolor = Color(0xFF1D1E33);
const inactivebuttoncolor =Color(0xFF111328);
const BottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<InputPage> {

  void updatebottomcolor(int gender){
    if(gender == 1){
      if(malebottom == inactivebuttoncolor){
        malebottom = activebuttoncolor;
        femalebottom = inactivebuttoncolor;
      }else{
        malebottom = inactivebuttoncolor;
      }
    }else if (gender == 2){
      if(femalebottom == inactivebuttoncolor){
        femalebottom = activebuttoncolor;
        malebottom = inactivebuttoncolor;
      }else{
        femalebottom = inactivebuttoncolor;
      }
    }
  }
  Color malebottom =inactivebuttoncolor;
  Color femalebottom = inactivebuttoncolor;

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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updatebottomcolor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: malebottom,
                      Child: TypeFormat(
                        iconn: FontAwesomeIcons.mars,
                        type: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updatebottomcolor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femalebottom,
                      Child: TypeFormat(
                        iconn: FontAwesomeIcons.venus,
                        type: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: inactivebuttoncolor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: inactivebuttoncolor),
                ),
                Expanded(
                  child: ReusableCard(colour: inactivebuttoncolor),
                ),
              ],
            ),
          ),
          Container(
            color: bottombuttoncolor,
            height: BottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
