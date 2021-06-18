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
              crossAxisSpacing: 20,
              mainAxisSpacing: 110,
              crossAxisCount: 2,
              children: List.generate(
                bookList.length,
                (index) => _buildBookContainer(index, context, bookList[index]),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBookContainer(
    int index,
    BuildContext context,
    BookModel book,
  ) =>
      GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookDetailsPage(),
              ));
        },
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 85,
                left: 15,
                right: 15,
                bottom: 15,
              ),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: kWhiteColor,
                border: Border.all(color: kWhiteColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    book.title,
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
                  Flexible(
                    child: Text(
                      book.authors.first,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kGrayColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -80, 0),
              child: Center(
                child: Image.network(
                  book.imageUrl,
                  height: 150,
                ),
              ),
            ),
          ],
        ),
      );
}
