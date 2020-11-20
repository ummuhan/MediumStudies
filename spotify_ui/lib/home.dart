import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/appBarRow.dart';
import 'package:spotify_ui/widgets/continueSongContainer.dart';
import 'package:spotify_ui/widgets/imageContainer.dart';
import 'package:spotify_ui/widgets/songBar.dart';
import 'package:spotify_ui/widgets/songName.dart';
import 'package:spotify_ui/widgets/tabIcon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0XFF8E8E8E), Color(0XFF2A2C27)])),
      child: ListView(
        children: [
          AppBarRow(),
          ImageContainer(),
          SongName(),

          SongBar(),
          ContinueSongContainer(),
            TabIcon(),
        ],
      ),
    ));
  }
}
