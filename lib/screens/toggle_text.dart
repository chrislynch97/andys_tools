import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:andys_tools/utilities/constants.dart';
import 'package:andys_tools/components/bottom_button.dart';
import 'package:string_validator/string_validator.dart';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:bot_toast/bot_toast.dart';

class ToggleTextScreen extends StatefulWidget {
  @override
  _ToggleTextScreenState createState() => _ToggleTextScreenState();
}

class _ToggleTextScreenState extends State<ToggleTextScreen> {
  String inputText = '';
  var inputController = TextEditingController();

  String replaceCharAt(String oldString, int index, String newChar) {
    return oldString.substring(0, index) +
        newChar +
        oldString.substring(index + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Andys Tools'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: kTextFieldInputDecoration,
                  controller: inputController,
                  onChanged: (value) {
                    inputText = value;
                  }),
            ),
          ),
          BottomButton(
            onTap: () {
              inputText = '';
              inputController.clear();

              BotToast.showText(text: 'Cleared Text!');
            },
            title: 'Clear Text',
            colour: Color(0xFF4CAF50),
          ),
          BottomButton(
            title: 'Copy to Clipboard',
            onTap: () {
              Random random = Random();
              for (int i = 0; i < inputText.length; i++) {
                int num = random.nextInt(2);

                if (isAlpha(inputText[i])) {
                  inputText = replaceCharAt(
                      inputText,
                      i,
                      (num == 0)
                          ? inputText[i].toLowerCase()
                          : inputText[i].toUpperCase());
                }
              }

              Clipboard.setData(new ClipboardData(text: inputText));

              BotToast.showText(text: 'Copied to Clipboard!');
            },
          ),
        ],
      ),
    );
  }
}
