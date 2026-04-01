import 'package:flutter/material.dart';

class Defaultbutton extends StatelessWidget {
  final Function() onPressed;
  final Size size;
  final String text;
  final Color color;
  final Color textColor;
  final EdgeInsetsGeometry margin;
  const Defaultbutton({
    required this.size,
    required this.onPressed,
    required this.text,
    this.color = Colors.white,
    this.textColor = Colors.black,
    super.key,
    this.margin = const EdgeInsets.only(bottom: 25, left: 20, right: 20),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.6,
      height: 45,
      //alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 25, left: 20, right: 20),
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
