import 'package:flutter/material.dart';
import '/pages/book_first_access/book_first_access_page.dart';
import 'shared/constants/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kSecondaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
              fontSize: 34,
            ),
            headline3: TextStyle(
              fontWeight: FontWeight.bold,
              color: kGrayDarkColor,
              fontSize: 18,
            ),
            button: TextStyle(fontWeight: FontWeight.bold),
            headline2: TextStyle(fontWeight: FontWeight.bold),
            bodyText1: TextStyle(color: kTextColor),
          ),
          fontFamily: "SF-Pro-Rounded"),
      home: BooksFirstAccessPage(),
    );
  }
}
