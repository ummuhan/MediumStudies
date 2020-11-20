import 'package:flutter/material.dart';

class ContinueSongContainer extends StatelessWidget {
  const ContinueSongContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.skip_previous,
            color: Colors.white,
            size: 60,
          ),
          Icon(
            Icons.pause_circle_filled,
            color: Colors.white,
            size: 90,
          ),
          Icon(
            Icons.skip_next,
            color: Colors.white,
            size: 60,
          ),
          Icon(
            Icons.do_disturb_on_outlined,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
