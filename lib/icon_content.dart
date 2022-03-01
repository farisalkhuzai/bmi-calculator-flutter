import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class iconcontent extends StatelessWidget {
  iconcontent(this.icon1,this.iconText);
  final IconData icon1;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(icon1,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(iconText,style: kTextStyle,)

      ],
    );
  }
}