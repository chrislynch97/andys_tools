import 'package:flutter/material.dart';
import 'package:andys_tools/utilities/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.title});

  final Function onTap;
  final String title;

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
        color: kBottomButtonColour,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottomButtonHeight,
      ),
    );
  }
}
