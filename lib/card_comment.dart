import 'package:flutter/material.dart';
import 'package:short_video_app/constants.dart';

class CardComment extends StatelessWidget {
  CardComment({@required this.image_path,@required this.comment, this.title});

  final String image_path;
  final String title;
  final String comment;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(image_path),
                  fit: BoxFit.fill
              )
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title,style: headStyle,),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.yellow,size: 10,),
                    Icon(Icons.star, color: Colors.yellow,size: 10,),
                    Icon(Icons.star, color: Colors.yellow, size: 10,),
                    Icon(Icons.star, color: Colors.grey,size: 10,),
                  ],
                ),

                Text(comment,style: labelStyle,),
              ],
            ),
          )),
          Icon(Icons.favorite, color: Colors.red,)
        ],
      ),
    );
  }
}
