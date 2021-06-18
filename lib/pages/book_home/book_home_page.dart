import 'package:flutter/material.dart';

import '../../shared/components/gradient.dart';
import 'book_home_controller.dart';
import 'components/book_app_bar.dart';
import 'components/book_greetings_title.dart';
import 'components/book_section.dart';

class BookHomePage extends StatelessWidget {
  final controller = BookHomeController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final _heading = 'Todos os livros';
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
                child: Column(
                  children: [
                    BookGreetingsTitle(
                      username: 'Lali',
                    ),
                    Expanded(
                      child: BookSection(
                        heading: _heading,
                        bookList: controller.books,
                      ),
                    ),
                  ],
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
