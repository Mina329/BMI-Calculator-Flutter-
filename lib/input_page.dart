import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;

  ReusableCard(@required this.colour);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
