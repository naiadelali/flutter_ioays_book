import 'package:flutter/material.dart';

import '../../../shared/components/gradient.dart';

import 'book_details_app_bar.dart';

class BookDetailsBackground extends StatelessWidget {
  final Size size;
  BookDetailsBackground({required this.size});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          gradient: linearGradient,
        ),
      ),
      Positioned(
        child: Container(
          width: size.width,
          height: size.height * 0.6,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
        ),
        left: 0,
        bottom: 0,
      ),
    ]);
  }
}
