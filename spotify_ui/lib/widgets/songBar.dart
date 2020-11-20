import 'package:flutter/material.dart';

class SongBar extends StatelessWidget {
  const SongBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 30,
            right: 30,
            top: 10,
          ),
          height: 3,
          color: Colors.white,
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "4.04",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "4.04",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
