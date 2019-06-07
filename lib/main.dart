import 'package:flutter/material.dart';
import 'package:flutter_news/screens/home.dart';
import 'package:flutter_news/screens/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  Widget _firstScreen;
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isSeen = prefs.getBool('isSeen');
  if (isSeen == null || isSeen == false ) {
    _firstScreen = OnBoarding();
  } else {
    _firstScreen = HomeScreen();
  }
  runApp(App(_firstScreen));
}

class App extends StatelessWidget {
  Widget _firstScreen;

  App(this._firstScreen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
        home: this._firstScreen,
    );
  }
}
