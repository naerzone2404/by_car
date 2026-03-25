import 'package:flutter/material.dart';

class Defaultbutton extends StatelessWidget {
  final Size size;
  final String text;
  final Color color;
  final Color textColor;
  const Defaultbutton({
    required this.size,
    required this.text,
    this.color = Colors.white,
    this.textColor = Colors.black,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 45,
      //alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 25, left: 20, right: 20),
      child: ElevatedButton(
        onPressed: () {},
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
