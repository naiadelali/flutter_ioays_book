import 'package:flutter/material.dart';

import 'pages/book_first_access/book_first_access_page.dart';

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
          primaryColor: Color(0xFFEC008C),
          accentColor: Colors.amber.shade800,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "SF-Pro-Rounded"),
      home: BooksFirstAccessPage(),
    );
  }
}
