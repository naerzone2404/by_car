import 'package:flutter/material.dart';

class Defaullttextfield extends StatelessWidget {
  final String text;
  final IconData icon;
  final EdgeInsetsGeometry margin;
  final Function(String text) onChanged;
  final String? Function(String?)? validator;

  const Defaullttextfield({
    required this.icon,
    required this.text,
    this.margin = const EdgeInsets.only(top: 50, left: 20, right: 20),
    super.key,
    required this.onChanged,
    this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: TextFormField(
        onChanged: (text) {
          onChanged(text);
        },
        validator: validator,
        decoration: InputDecoration(
          label: Text(text),
          border: InputBorder.none,
          prefixIcon: Container(
            margin: EdgeInsets.only(top: 10),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Icon(icon),
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
