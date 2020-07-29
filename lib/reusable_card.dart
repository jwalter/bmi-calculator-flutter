import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  static const activeCardColor = Color(0xFF1D1E33);

  final Color color;
  final Widget cardChild;

  ReusableCard({this.color = activeCardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: this.color, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
