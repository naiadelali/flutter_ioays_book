import 'package:flutter/material.dart';

class BookDetailsAppbar extends StatelessWidget {
  final String? title;

  const BookDetailsAppbar({this.title});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        height: 60,
        width: 60,
      ),
      top: 60,
      left: 0,
    );
  }
}
