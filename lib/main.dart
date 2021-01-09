import 'package:flutter/material.dart';
import 'package:andys_tools/screens/toggle_text.dart';
import 'package:bot_toast/bot_toast.dart';

void main() => runApp(AndysTools());

class AndysTools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: ToggleTextScreen(),
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
    );
  }
}
