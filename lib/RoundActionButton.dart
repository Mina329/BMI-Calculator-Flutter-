import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';

class RoundActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  RoundActionButton(
      {required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: kRoundButtonColor,
      child: Icon(
        icon,
      ),
      shape: CircleBorder(),
    );
  }
}
