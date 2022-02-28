import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              Expanded(child: ReuseableCard(Color(0xFF1D1E33))),
              Expanded(child:ReuseableCard(Color(0xFF1D1E33)))
            ],
          )),
          Expanded(child: ReuseableCard(Color(0xFF1D1E33))),
          Expanded(child: Row(
            children: [
              Expanded(child: ReuseableCard(Color(0xFF1D1E33))),
              Expanded(child: ReuseableCard(Color(0xFF1D1E33)))
            ],
          )),
        ],
      ),

    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard(this.colors1);
  Color colors1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colors1,
          borderRadius: BorderRadius.circular(10.0)),

    );
  }
}

