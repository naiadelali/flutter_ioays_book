import 'package:flutter/material.dart';
import '../../../shared/constants/colors.dart';

class BookGreetingsTitle extends StatelessWidget {
  final String username;

  const BookGreetingsTitle({required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: 'Olá, ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: kGrayColor,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: username,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: kTextColor,
                  )),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.only(
              top: 15,
              bottom: 20,
            ),
            width: 150,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
