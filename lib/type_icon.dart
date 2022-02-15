import 'package:flutter/material.dart';
import 'constants.dart';

class TypeFormat extends StatelessWidget {
  final IconData iconn ;
  final String type ;
  TypeFormat({required this.iconn , required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconn,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          type,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}