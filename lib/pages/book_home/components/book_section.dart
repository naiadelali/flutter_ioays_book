import 'package:flutter/material.dart';
import 'package:flutter_ioasys_books/pages/book_home/components/book_heading.dart';
import 'package:flutter_ioasys_books/shared/models/book_model.dart';

class BookSection extends StatelessWidget {
  final String heading;
  final List<BookModel> bookList;
  BookSection({required this.heading, required this.bookList});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BookHeading(heading: heading),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            height: MediaQuery.of(context).size.height * 0.4,
            // child:
          )
        ],
      ),
    );
  }
}
