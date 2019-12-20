import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:short_video_app/constants.dart';
class FeedCard extends StatelessWidget {
FeedCard({@required this.profileImage,@required this.profileTitle,@required this.profileSub,@required this.profilePost,@required this.profileNums,@required this.comNums,@required this.onPress});


final String profileImage;
final String profileTitle;
final String profileSub;
final String profilePost;
final String profileNums;
final String comNums;

final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 75,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                       height: 50,
                      width:50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(profileImage)
                        )
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(profileTitle,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.white),),
                          Text(profileSub,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: labelColor),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(image: AssetImage(profilePost),
                  fit: BoxFit.fill)
                ),
              child: Center(
                child: Icon(Icons.play_circle_filled, color: Colors.white,size: 50,),
              ),
              ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 40,
                    width: 75,
                    decoration: BoxDecoration(
                      color: CardColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.favorite, color: Colors.red,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(profileNums, style:TextStyle(color: labelColor,fontSize: 15,fontWeight: FontWeight.w300),),
                            ),
                          ],
                        ),
                      )),
                ),
                Expanded(
                  child: Row(),)
                ,
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 40,
                      width: 75,
                      decoration: BoxDecoration(
                          color: CardColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(CupertinoIcons.conversation_bubble, color: Colors.grey,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(comNums, style:TextStyle(color: labelColor,fontSize: 15,fontWeight: FontWeight.w300),),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),

             Container(
               margin: EdgeInsets.all(10),
                height: 2,
                width: double.infinity,
                color: CardColor,
              ),
            
          ],
        ),
      ),
    );
  }
}
