import 'package:flutter/material.dart';

import '../../../shared/components/input_text_form_field.dart';
import '../../../shared/components/rounded_button.dart';
import '../../book_home/book_home_page.dart';
import 'login_logo.dart';

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
