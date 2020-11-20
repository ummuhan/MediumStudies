
import 'package:flutter/material.dart';

class TabIcon extends StatelessWidget {
  const TabIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.phonelink,
            color: Colors.white,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.3,
          ),
          Icon(
            Icons.share,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
