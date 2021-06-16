import 'package:flutter/material.dart';
import 'package:flutter_ioasys_books/pages/book_login/book_login_page.dart';
import 'package:flutter_ioasys_books/shared/components/gradient.dart';
import 'package:flutter_ioasys_books/shared/components/rounded_button.dart';

class BooksFirstAccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Container(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 73,
                    height: 73,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/images/pattern.png"),
                        fit: BoxFit.none,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Text(
                    "Clube dos\ncuriosos",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Leia\nDescubra\nInspire-se",
                    style: TextStyle(
                      height: 1.75,
                      letterSpacing: 2,
                      color: Colors.white38,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 30,
                    ),
                    width: 200,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: RoundedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookLoginPage(),
                    ),
                  ),
                  width: 100,
                  icon: Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                    size: 30,
                  ),
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          width: size * 0.8,
          height: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                40,
              ),
              bottomLeft: Radius.circular(
                40,
              ),
            ),
            gradient: linearGradient,
          ),
        ),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/pattern.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
