
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'HomePage/HomePage.dart';

void main() async {
  runApp(
    MyApp(),
  );
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter India Conference 2020',
      theme: ThemeData(
        textTheme: TextTheme(
          headline5: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: 'assets/fonts/ProductSans.ttf',
            fontSize: 35.0,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePageNew(),
//      initialRoute: HomePage.tag,
      routes: {
        HomePageNew.tag: (context) => HomePageNew(),
      },
    );
  }
}
