import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final double IconSize;
  final VoidCallback onPressed;

  RoundButton(
      {Key? key,
      required this.onPressed,
      required this.icon,
      required this.IconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle,
        ),
        child: InkWell(
          child: Icon(
            icon,
            color: Colors.black,
            size: IconSize,
          ),
          onTap: onPressed,
        ));
  }
}
