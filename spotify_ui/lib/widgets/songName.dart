import 'package:flutter/material.dart';

class SongName extends StatelessWidget {
  const SongName({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Other People",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
          Container(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "LP",
                style: TextStyle(fontSize: 15, color: Colors.white),
              )),
        ]);
  }
}
