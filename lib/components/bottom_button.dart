import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    @required this.onTap,
    @required this.buttonTitle,
    @required this.weight,
    @required this.height,
  });

  final Function onTap;
  final String buttonTitle;
  final int weight;
  final int height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              buttonTitle,
              style: kLargeButtonTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
