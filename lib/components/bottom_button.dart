import 'package:flutter/material.dart';
import 'package:andys_tools/utilities/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.title, this.colour});

  final Function onTap;
  final String title;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kBottomButtonTextStyle,
          ),
        ),
        color: (colour == null) ? kBottomButtonColour : colour,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottomButtonHeight,
      ),
    );
  }
}
