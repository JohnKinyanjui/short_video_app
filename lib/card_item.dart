import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CardItem extends StatelessWidget {
  CardItem({@required this.color,@required this.tcolor,@required this.icon,@required this.text,@required this.onPress});

  final Color color;
  final Color tcolor;

  final IconData icon;
  final String text;

  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
        child: Container(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon, color: color),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color:tcolor),),
              )
            ],
          ),
        ));
  }
}
