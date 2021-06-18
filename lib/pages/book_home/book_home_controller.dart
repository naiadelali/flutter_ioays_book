import 'package:flutter/material.dart';

import '../../shared/models/book_model.dart';

class BookHomeController {
  late List<BookModel> books;
  BookHomeController() {
    books = getBooks();
  }

  List<BookModel> getBooks() {
    return (BookModel.response).map((e) => BookModel.fromJson(e)).toList();
  }

  final notifierScroll = ValueNotifier(0.0);
 

 
}
