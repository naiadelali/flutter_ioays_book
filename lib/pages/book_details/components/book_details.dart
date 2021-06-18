import 'dart:math';

import 'package:flutter/material.dart';

import '../book_details_controller.dart';
import 'book_details_image.dart';

class BookDetails extends StatelessWidget {
  final BookDetailsController controller;
  final PageController pageController;
  final double bookHeight;
  final double bookWight;
  final Size size;

  const BookDetails(
      {required this.controller,
      required this.pageController,
      required this.bookHeight,
      required this.bookWight,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<double>(
      valueListenable: controller.notifierScroll,
      builder: (context, value, _) {
        return PageView.builder(
          controller: pageController,
          itemCount: controller.books.length,
          itemBuilder: (_, index) {
            var book = controller.books[index];
            final percentage = index - value;
            final rotation = percentage.clamp(0.0, 1.0);
            final fixRotation = pow(rotation, 0.5);

            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  BookDetailImage(
                      book: book,
                      bookHeight: bookHeight,
                      bookWight: bookWight,
                      fixRotation: fixRotation,
                      rotation: rotation,
                      size: size),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Opacity(
                      opacity: 1 - rotation,
                      child: Column(
                        children: [
                          Text(
                            book.title,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(book.authors[0],
                              style: Theme.of(context).textTheme.headline3),
                          SizedBox(height: 10),
                          Text(book.description),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
