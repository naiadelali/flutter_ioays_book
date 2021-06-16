import 'package:flutter/material.dart';

import '../../../shared/models/book_model.dart';
import 'book_heading.dart';

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
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(""),
                  color: Colors.teal[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(''),
                  color: Colors.teal[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(''),
                  color: Colors.teal[300],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(''),
                  color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(''),
                  color: Colors.teal[500],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(''),
                  color: Colors.teal[600],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
