import 'package:flutter/material.dart';

class Defaullttextfieldoutlined extends StatelessWidget {
  final String text;
  final IconData icon;
  final EdgeInsetsGeometry margin;

  const Defaullttextfieldoutlined({
    required this.icon,
    required this.text,
    this.margin = const EdgeInsets.only(top: 50, left: 20, right: 20),
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: margin,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(text),
          labelStyle: TextStyle(color: Colors.white60),
          // border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 34, 101, 202),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 35, 161, 183),
              width: 1,
            ),
          ),
          prefixIcon: Container(
            margin: EdgeInsets.only(top: 10),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Icon(icon, color: Colors.white60),
                Container(height: 20, width: 1, color: Colors.grey),
              ],
            ),
          ),
          //contentPadding: EdgeInsets.only(top: 10, left: 10),
        ),
      ),
    );
  }
}
