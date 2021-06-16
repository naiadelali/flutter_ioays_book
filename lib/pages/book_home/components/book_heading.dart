import 'package:flutter/material.dart';

class BookHeading extends StatelessWidget {
  final String heading;

  const BookHeading({required this.heading});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 15.0,
          width: 15.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Theme.of(context).primaryColor),
        ),
        Text(
          heading,
          style: TextStyle(
            fontSize: 24.0,
            color: Color(0XFF707070),
          ),
        ),
      ],
    );
  }
}
