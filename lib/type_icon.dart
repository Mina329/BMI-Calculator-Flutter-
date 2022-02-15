import 'package:flutter/material.dart';

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
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}