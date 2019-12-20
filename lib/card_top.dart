import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {

  TopCard({@required this.color,@required this.text,@required this.tColor,@required this.onPress});

  final Function onPress;
  final Color color;
  final String text;
  final Color tColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(8),
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Center(
          child: Center(
            child :Text(text, style: TextStyle(fontWeight: FontWeight.bold,color: tColor),),
          ),
        ),
      ),
    );
  }
}
