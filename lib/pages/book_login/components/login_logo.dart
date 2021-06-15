import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.0,
      child: Stack(
        children: [
          Text(
            'Clube dos',
            style: TextStyle(
              fontSize: 60.0,
            ),
          ),
          Positioned(
            top: 50.0,
            child: Text(
              'Curiosos',
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            top: 97.0,
            left: 250.0,
            child: Container(
              height: 10.0,
              width: 10.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
