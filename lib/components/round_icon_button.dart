import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {

  final IconData icon1;
  final Function operation1;

  RoundIconButton({required this.icon1, required this.operation1});
  //RoundIconButton({@required this.icon1,@required this.operation1});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:()=> operation1(),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon1),
    );
  }
}