import 'package:flutter/material.dart';

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
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailsPage(),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text(""),
                    color: Colors.teal[100],
                  ),
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
          ),
        )
      ],
    );
  }
}
