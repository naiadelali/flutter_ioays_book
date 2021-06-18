import 'package:flutter/material.dart';
import '../../../shared/models/book_model.dart';

class BookDetailImage extends StatelessWidget {
  final BookModel book;
  final double bookHeight;
  final double bookWight;
  final num fixRotation;
  final double rotation;
  final Size size;

  const BookDetailImage({
    required this.book,
    required this.bookHeight,
    required this.bookWight,
    required this.fixRotation,
    required this.rotation,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: bookHeight,
            width: bookWight,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 20,
                offset: Offset(5.0, 5.0),
                spreadRadius: 10,
              )
            ]),
          ),
          Transform(
            alignment: Alignment.centerLeft,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.002)
              ..rotateY(1.8 * fixRotation)
              ..translate(-rotation * size.width * 0.8)
              ..scale(1 + rotation),
            child: Hero(
              tag: "book${book.id}",
              child: Image.network(
                book.imageUrl,
                height: bookHeight,
                width: bookWight,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
