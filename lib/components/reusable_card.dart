import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  static const activeCardColor = Color(0xFF1D1E33);

  final Color color;
  final Widget cardChild;
  final GestureTapCallback tapHandler;

  ReusableCard({this.color = activeCardColor, this.cardChild, this.tapHandler});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapHandler,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
