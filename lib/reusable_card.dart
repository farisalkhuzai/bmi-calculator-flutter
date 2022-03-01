import 'package:flutter/material.dart';


class ReuseableCard extends StatelessWidget {
  ReuseableCard(this.colors1,{this.cardChild,this.onPress});
  final Color colors1;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colors1,
            borderRadius: BorderRadius.circular(10.0)),

      ),
    );
  }
}

// onTap: (){
// setState(() {
// selectedGender = Gender.male;
// });
// },