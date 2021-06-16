import 'package:flutter/material.dart';
import 'package:flutter_ioasys_books/shared/components/gradient.dart';

import 'components/book_app_bar.dart';
import 'components/book_greetings_title.dart';
import 'components/book_section.dart';

class BookHomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  var _heading = "Todos os livros";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: BookAppBar(scaffoldKey: _scaffoldKey),
      ),
      drawer: Drawer(),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 20,
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BookGreetingsTitle(
                        username: "Lali",
                      ),
                      BookSection(
                        heading: _heading,
                        bookList: [],
                      ),
                    ],
                  ),
                ),
                padding: EdgeInsets.only(
                  top: 40,
                  left: 30,
                  right: 30,
                ),
                width: size.width,
                decoration: BoxDecoration(
                  color: Color(0xfffff8ee),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          gradient: linearGradient,
        ),
      ),
    );
  }
}
