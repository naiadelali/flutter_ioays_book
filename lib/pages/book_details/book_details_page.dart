import 'package:flutter/material.dart';

import 'book_details_controller.dart';
import 'components/book_details.dart';
import 'components/book_details_app_bar.dart';
import 'components/book_details_background.dart';

class BookDetailsPage extends StatefulWidget {
  const BookDetailsPage({Key? key}) : super(key: key);

  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  final BookDetailsController _controller = BookDetailsController();

  final pageController = PageController();
  void _listener() {
    _controller.notifierScroll.value = pageController.page!;
  }

  @override
  void initState() {
    pageController.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    pageController.removeListener(_listener);
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bookHeight = size.height * 0.30;
    final bookWight = size.width * 0.4;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Max Size
          BookDetailsBackground(size: size),

          Positioned(
            child: Container(
              child: BookDetails(
                controller: _controller,
                pageController: pageController,
                bookHeight: bookHeight,
                bookWight: bookWight,
                size: size,
              ),
              height: size.height * 0.9,
              width: size.width,
              color: Colors.transparent,
            ),
            bottom: 0,
            right: 0,
          ),
          BookDetailsAppbar(),
        ],
      ),
    );
  }
}
