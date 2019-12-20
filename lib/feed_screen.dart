import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:short_video_app/card_comment.dart';
import 'package:short_video_app/card_feed.dart';
import 'package:short_video_app/constants.dart';
import 'package:short_video_app/constants.dart' as prefix0;
import 'package:short_video_app/news_feed.dart';
class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NewsFeed feed = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: prefix0.backgroundColor,
        elevation: 0.0,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.all(8),
              child: Icon(CupertinoIcons.share_up, color: Colors.white,size: 30,)
             ) 
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          FeedCard(profileImage: feed.profile_image,
              profileTitle: feed.profile_title,
              profileSub: feed.profie_sub,
              profilePost: feed.post_image,
              profileNums: feed.followedNums,
              comNums: "10",
              onPress: (){}),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('😎😎😎😎 This is really cool....', style: prefix0.labelStyle,),
          ),
          
          Expanded(
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  color: CardColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 7,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardComment(image_path: "assets/images/profile3.jpg",title: "Jonas Family", comment: "I love this video"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardComment(image_path: "assets/images/profile2.jpg",title: "James", comment: "Nice One"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: iconColor,
        child: Icon(Icons.edit, color: prefix0.backgroundColor,),),
    );
  }
}
