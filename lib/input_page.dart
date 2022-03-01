import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const actaiveCardsColor = Color(0xFF1D1E33);
const inactaiveCardsColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  Color maleCardColor = inactaiveCardsColor;
  Color femaleCardColor = inactaiveCardsColor;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: ReuseableCard(selectedGender == Gender.male? actaiveCardsColor:inactaiveCardsColor,
              cardChild: iconcontent(FontAwesomeIcons.mars,"MALE"),
                onPress: (){
                setState(() {
                  selectedGender = Gender.male;
                });
                },
              )),
              Expanded(child:ReuseableCard(selectedGender == Gender.female? actaiveCardsColor:inactaiveCardsColor,
              cardChild: iconcontent(FontAwesomeIcons.venus, "FEMALE"),
                onPress: (){
                setState(() {
                  selectedGender = Gender.female;
                });
                },
              ))
            ],
          )),
          Expanded(child: ReuseableCard(actaiveCardsColor)),
          Expanded(child: Row(
            children: [
              Expanded(child: ReuseableCard(actaiveCardsColor)),
              Expanded(child: ReuseableCard(actaiveCardsColor))
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            
          )
        ],
      ),

    );
  }
}





