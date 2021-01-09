import 'package:flutter/material.dart';

const kBottomButtonHeight = 80.0;
const kBottomButtonColour = Color(0xFF7B1FA2);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  hintText: 'Enter some text',
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
