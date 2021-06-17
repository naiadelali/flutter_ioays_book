import 'package:flutter/material.dart';

import '../../../shared/components/gradient.dart';
import '../../../shared/constants/colors.dart';

class BookAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const BookAppBar({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        padding: EdgeInsets.only(
          left: 30,
          top: 50,
          right: 30
        ),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Image.asset('assets/images/menu.png'),
              onPressed: () => scaffoldKey.currentState!.openDrawer(),
            ),
            IconButton(
              icon: Icon(Icons.search, color: kWhiteColor),
              onPressed: () => null,
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: linearGradient,
        ),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false, // Don't show the leading button
      bottomOpacity: 0.0,
      elevation: 0.0,
    );
  }
}
