import 'package:flutter/material.dart';
import 'package:foodexpress/src/pages/signin_page.dart';
import 'package:foodexpress/src/screens/main_screen.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FoodExpress",
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
