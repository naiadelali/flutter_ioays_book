import 'package:flutter/material.dart';
import 'package:flutter_ioasys_books/pages/book_home/book_home_page.dart';
import 'package:flutter_ioasys_books/pages/book_login/components/login_logo.dart';
import 'package:flutter_ioasys_books/shared/components/input_text_form_field.dart';
import 'package:flutter_ioasys_books/shared/components/rounded_button.dart';

class LoginFormPage extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      LoginLogo(),
      InputTextField(
        controller: _emailController,
        labelText: 'E-mail',
      ),
      InputTextField(
        controller: _passwordController,
        labelText: 'Senha',
        obscureText: true,
        isVisibility: true,
      ),
      SizedBox(height: 80.0),
      RoundedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookHomePage(),
          ),
        ),
        color: Theme.of(context).primaryColor,
        text: Text(
          'Entrar',
          style: TextStyle(fontSize: 18),
        ),
      ),
    ]);
  }
}
