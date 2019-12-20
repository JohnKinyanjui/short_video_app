import 'package:short_video_app/card_feed.dart';
import 'package:short_video_app/feed_screen.dart';
import 'package:short_video_app/news_feed.dart';
import 'package:short_video_app/post.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
Post(this.feed);
 final List<NewsFeed> feed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext ctx,int index){
         return FeedCard(
             onPress: (){
               Navigator.push(context,
                     MaterialPageRoute(builder: (context) => FeedScreen(),
                     settings: RouteSettings(
                       arguments: feed[index]
                     )
                     )

               );
             },
             profileImage: feed[index].profile_image,
             profileTitle: feed[index].profile_title,
             profileSub: feed[index].profie_sub,
             profilePost: feed[index].post_image,
             profileNums: feed[index].followedNums,
             comNums: feed[index].ComNums);
      },
      itemCount: feed.length
        ,),
    );
  }
}
