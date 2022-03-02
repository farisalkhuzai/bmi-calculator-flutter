import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';
import 'results_page.dart';
import '../components/round_icon_button.dart';




enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height1 = 180;
  int weight1 = 60;
  int age1 = 20;

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
              Expanded(child: ReuseableCard(colors1: selectedGender == Gender.male? kActaiveCardsColor:kInactaiveCardsColor,
              cardChild: iconcontent(FontAwesomeIcons.mars,"MALE"),
                onPress: (){
                setState(() {
                  selectedGender = Gender.male;
                });
                },
              )),
              Expanded(child:ReuseableCard(colors1: selectedGender == Gender.female? kActaiveCardsColor:kInactaiveCardsColor,
              cardChild: iconcontent(FontAwesomeIcons.venus, "FEMALE"),
                onPress: (){
                setState(() {
                  selectedGender = Gender.female;
                });
                },
              ))
            ],
          )),
          Expanded(child: ReuseableCard(colors1:kActaiveCardsColor
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
              Expanded(child: ReuseableCard(colors1: kActaiveCardsColor,
              cardChild: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('WEIGHT', style: kTextStyle),
                  Text(weight1.toString(), style: kNumbersStyles),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButton(icon1: FontAwesomeIcons.minus,
                      operation1: (){
                        setState(() {
                          weight1--;
                        });
                      },
                      ),
                      SizedBox(width: 10.0,),
                      RoundIconButton(icon1:FontAwesomeIcons.plus,
                        operation1: (){
                          setState(() {
                            weight1++;
                          });
                        },)
                    ],
                  )
                ],
              ),
              )),
              Expanded(child: ReuseableCard(colors1: kActaiveCardsColor,
                cardChild: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE', style: kTextStyle),
                    Text(age1.toString(), style: kNumbersStyles),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon1: FontAwesomeIcons.minus,
                          operation1: (){
                            setState(() {
                              age1--;
                            });
                          },
                        ),
                        SizedBox(width: 10.0,),
                        RoundIconButton(icon1:FontAwesomeIcons.plus,
                          operation1: (){
                            setState(() {
                              age1++;
                            });
                          },)
                      ],
                    )
                  ],
                ),
              ))
            ],
          )),
          BottomButton(buttonTitle: 'CALCULATE',
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage()));
          },
          )
        ],
      ),

    );
  }
}







