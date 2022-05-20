import 'package:books/screen/home/home_screen.dart';
import 'package:books/screen/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

import 'components/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme:  Theme.of(context).textTheme.apply(bodyColor: kTetxColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: kBackgroundColor
      ),
      home: HomeScreen(),
    );
  }
}

