import 'package:flutter/material.dart';

const kBottomButtonHeight = 80.0;
const kBottomButtonColour = Color(0xFFEB1555);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  hintText: 'eNtEr SoMe TeXt',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const kBottomButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
