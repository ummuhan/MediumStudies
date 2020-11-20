import 'package:flutter/material.dart';

class AppBarRow extends StatelessWidget {
  const AppBarRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10, right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.expand_more_sharp,
            size: 40,
            color: Colors.white,
          ),
          Text(
            "ŞARKI ÇALINIYOR",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
