import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';


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
  int height1 = 180;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: ReuseableCard(selectedGender == Gender.male? kActaiveCardsColor:kInactaiveCardsColor,
              cardChild: iconcontent(FontAwesomeIcons.mars,"MALE"),
                onPress: (){
                setState(() {
                  selectedGender = Gender.male;
                });
                },
              )),
              Expanded(child:ReuseableCard(selectedGender == Gender.female? kActaiveCardsColor:kInactaiveCardsColor,
              cardChild: iconcontent(FontAwesomeIcons.venus, "FEMALE"),
                onPress: (){
                setState(() {
                  selectedGender = Gender.female;
                });
                },
              ))
            ],
          )),
          Expanded(child: ReuseableCard(kActaiveCardsColor
          ,cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height',style: kTextStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height1.toString(),style: kNumbersStyles),
                    Text('cm',style: kTextStyle,),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0 )
                  ),
                  child: Slider(
                    value: height1.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newHeight){
                      setState(() {
                        height1 = newHeight.toInt();
                      });
                    },
                  ),
                )
              ],
            ),
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child: ReuseableCard(kActaiveCardsColor)),
              Expanded(child: ReuseableCard(kActaiveCardsColor))
            ],
          )),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
            
          )
        ],
      ),

    );
  }
}





