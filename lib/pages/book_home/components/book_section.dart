import 'package:flutter/material.dart';
import '../../../shared/constants/colors.dart';

import '../../../shared/models/book_model.dart';
import '../../book_details/book_details_page.dart';
import 'book_heading.dart';

class BookSection extends StatelessWidget {
  final String heading;
  final List<BookModel> bookList;
  BookSection({required this.heading, required this.bookList});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookHeading(heading: heading),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: GridView.count(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(top: 100),
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 110,
              crossAxisCount: 2,
              children: List.generate(10, buildBookContainer),
            ),
          ),
        )
      ],
    );
  }

  Widget buildBookContainer(int index) => Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kWhiteColor,
              border: Border.all(color: kWhiteColor),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'A Culpa é das Estrelas',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kprimaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Jonh Green',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kGrayColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, -80, 0),
            child: Center(
              child: Image.network(
                'https://files-books.ioasys.com.br/Book-0.jpg',
                height: 150,
              ),
            ),
          ),
        ],
      );
}
