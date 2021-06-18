import 'package:flutter/material.dart';

import '../../shared/models/book_model.dart';

class BookDetailsController {
  late List<BookModel> books;
  BookDetailsController() {
    books = getBooks();
  }

  List<BookModel> getBooks() {
    return (BookModel.response).map((e) => BookModel.fromJson(e)).toList();
  }

  final notifierScroll = ValueNotifier(0.0);
 

 
}
