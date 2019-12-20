import 'package:flutter/material.dart';
import 'package:short_video_app/constants.dart';


class BottomNavigation extends StatelessWidget{
  BottomNavigation({@required this.onPress,@required this.onPress1,@required this.onPress2,@required this.text1,@required this.text2,@required this.text3,@required this.icon1,@required this.icon2,@required this.icon3, @required this.iconColor1,@required this.iconColor2,@required this.iconColor3,@required this.textColor1,@required this.textColor2,@required this.textColor3});
  final Function onPress;
  final Function onPress1;
  final Function onPress2;

  final String text1;
  final String text2;
  final String text3;

  final IconData icon1;
  final IconData icon2;
  final IconData icon3;

  final Color iconColor1;
  final Color iconColor2;
  final Color iconColor3;

  final Color textColor1 ;
  final Color textColor2;
  final Color textColor3 ;

  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: CardColor,
        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             //Item 1
             GestureDetector(
               onTap: onPress,
                 child: Container(
                   height: 40,
                   decoration: BoxDecoration(
                     color: Colors.grey
                   ),
                   margin: EdgeInsets.all(8),
                   child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(icon1, color: iconColor1,),
                      ),
                      Text(text1, style: TextStyle(color: textColor1,fontSize: 20,fontWeight: FontWeight.w400),),

                    ],
                   ),
                 )),
             //Item 2
             GestureDetector(
                 onTap: onPress1,
                 child: Container(
                   height: 40,
                   decoration: BoxDecoration(
                       color: Colors.grey
                   ),
                   margin: EdgeInsets.all(8),
                   child: Row(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(2.0),
                         child: Icon(icon2, color:iconColor2,),
                       ),
                       Text(text2, style: TextStyle(color: textColor2,fontSize: 20,fontWeight: FontWeight.w400),),

                     ],
                   ),
                 )),
             //Item 3
             GestureDetector(
                 onTap: onPress2,
                 child: Container(
                   height: 40,
                   decoration: BoxDecoration(
                       color: Colors.grey
                   ),
                   margin: EdgeInsets.all(8),
                   child: Row(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(2.0),
                         child: Icon(icon3, color: iconColor3,),
                       ),
                       Text(text3, style: TextStyle(color: textColor3,fontSize: 20,fontWeight: FontWeight.w400),),

                     ],
                   ),
                 )),
           ],
          ),
        ],
      ),
    );
  }
}