import 'package:flutter/material.dart';

import 'components/login_form.dart';

class BookLoginPage extends StatelessWidget {
  const BookLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = new GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            child: Form(
              key: formKey,
              child: LoginFormPage(),
            ),
            height: size.height * 0.8,
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            decoration: BoxDecoration(
              color: Color(
                0xfff3f3f3,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  40,
                ),
                topRight: Radius.circular(40),
              ),
            ),
          ),
        ),
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
