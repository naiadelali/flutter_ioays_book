import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function()? onPressed;
  final double height;
  final double width;
  final Widget? text;
  final Widget? icon;
  final double borderRadius;
  final Color? color;

  const RoundedButton(
      {Key? key,
      this.onPressed,
      this.height = 50,
      this.width = double.infinity,
      this.text,
      this.icon,
      this.borderRadius = 100,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Container(
        height: height,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text ?? Offstage(),
            icon ?? Offstage(),
          ],
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
