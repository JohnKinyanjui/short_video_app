import 'package:flutter/material.dart';
import 'package:short_video_app/constants.dart';
import 'package:short_video_app/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
