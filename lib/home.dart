import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:short_video_app/card_bottom.dart';
import 'package:short_video_app/card_feed.dart';
import 'package:short_video_app/card_item.dart';
import 'package:short_video_app/constants.dart';
import 'package:short_video_app/constants.dart' as prefix0;
import 'package:short_video_app/card_top.dart';
import 'package:short_video_app/news_feed.dart';
import 'package:short_video_app/post.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {

  choices click;
  cards selectedCard = cards.funny;
  icons selectedIcon;
  items cards_items = items.item1;

  List<NewsFeed> feed =[
    NewsFeed(profile_image: 'assets/images/profile1.jpg',
        profile_title: "Kala lis",
        profie_sub: "This is the Lion King.",
        post_image: 'assets/images/post1.jpg',
        followedNums: "32", ComNums: "10",
        ),
    NewsFeed(profile_image: 'assets/images/profile2.jpg',
        profile_title: "Kala lis",
        profie_sub: "This is really beatiful",
        post_image: 'assets/images/post2.jpg',
        followedNums: "32", ComNums: "20"),
    NewsFeed(profile_image: 'assets/images/profile3.jpg',
        profile_title: "Jonas Family",
        profie_sub: "This is really beatifil",
        post_image: 'assets/images/post3.jpg',
        followedNums: "32",
        ComNums: "21")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: prefix0.backgroundColor,
        title: Text("Daily Share"),
        leading: Icon(CupertinoIcons.video_camera_solid, color: prefix0.iconColor,size: 50,),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(CupertinoIcons.search, color: Colors.white,size: 30,),
          )
        ],
      ),
      body: Column(
          children: <Widget>[
          Expanded(
            child: Container(
               child: Column(
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       Expanded(
                         child: TopCard(onPress: (){
                           setState(() {
                             selectedCard = cards.hot;
                           });
                         },
                           color: selectedCard == cards.hot ? iconColor : prefix0.CardColor,
                           text: "Hot", tColor: selectedCard == cards.hot ? prefix0.backgroundColor : prefix0.labelColor,
                         ),
                       ),
                       Expanded(
                         child: TopCard(onPress: (){
                           setState(() {
                             selectedCard = cards.funny;
                           });
                         },
                           color: selectedCard == cards.funny ? iconColor : prefix0.CardColor,
                           text: "Funny", tColor: selectedCard == cards.funny ? prefix0.backgroundColor : prefix0.labelColor,
                         ),
                       ),
                       Expanded(
                         child: TopCard(onPress: (){
                           setState(() {
                             selectedCard = cards.Scenery;
                           });
                         },
                           color: selectedCard == cards.Scenery ? iconColor : prefix0.CardColor,
                           text: "Scenery", tColor: selectedCard == cards.Scenery ? prefix0.backgroundColor : prefix0.labelColor,
                         ),
                       ),
                       IconButton(onPressed: (){
                          setState(() {
                            selectedIcon = icons.icon1;
                          });
                       },icon: Icon(Icons.dashboard, color: selectedIcon == icons.icon1 ? Colors.white : prefix0.labelColor,), ),
                       IconButton( onPressed: (){
                         setState(() {
                           selectedIcon = icons.icon2;
                         });
                       },icon: Icon(Icons.view_agenda, color: selectedIcon == icons.icon2 ? Colors.white : prefix0.labelColor,),)
                     ],
                   ),
                   Expanded(
                     child: Container(
                           child: Post(feed),
                       ),
                   ),



                 ],
               ),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: prefix0.CardColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
            ),
            child: Row(
              children: <Widget>[
                CardItem(onPress: (){
                  setState(() {
                    cards_items = items.item1;
                  });
                },
                    color: cards_items == items.item1 ? prefix0.iconColor : prefix0.CardColor,
                    tcolor: cards_items == items.item1 ? prefix0.iconColor : prefix0.labelColor,
                    icon: CupertinoIcons.home,
                    text: "Home", ),
                CardItem(onPress: (){
                  setState(() {
                    cards_items = items.item2;
                  });
                },
                  color: cards_items == items.item2 ? prefix0.iconColor : prefix0.CardColor,
                  tcolor: cards_items == items.item2 ? prefix0.iconColor : prefix0.labelColor,
                  icon: CupertinoIcons.pen,
                  text: "Notice", ),
               CardItem(onPress: (){
                  setState(() {
                    cards_items = items.item3;
                  });
                },
                  color: cards_items == items.item3 ? prefix0.iconColor : prefix0.CardColor,
                  tcolor: cards_items == items.item3 ? prefix0.iconColor : prefix0.labelColor,
                  icon: CupertinoIcons.video_camera,
                  text: "Scenery", )
              ],
            ),
          )
          ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: FloatingActionButton(
          backgroundColor: prefix0.iconColor,
          child: Icon(Icons.send, color: Colors.black,),
          onPressed: () => null,
        ),
      ),
    );
  }
}
enum choices{
  home,notice,mine
}
enum cards {
  hot,
  funny,
  Scenery,
}
enum icons{
  icon1,
  icon2
}

enum items{
  item1,
  item2,
  item3
}