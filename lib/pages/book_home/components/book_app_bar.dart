import 'package:flutter/material.dart';
import 'package:flutter_ioasys_books/shared/components/gradient.dart';

class BookAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const BookAppBar({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        padding: EdgeInsets.only(
          left: 30,
          top: 10,
        ),
        alignment: Alignment.centerLeft,
        child: IconButton(
          icon: Image.asset('assets/images/menu.png'),
          onPressed: () => scaffoldKey.currentState!.openDrawer(),
        ),
        decoration: BoxDecoration(
          gradient: linearGradient,
        ),
      ),
      automaticallyImplyLeading: false, // Don't show the leading button
      bottomOpacity: 0.0,
      elevation: 0.0,
    );
  }
}
