import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 40,
        left: 20,
        right: 20,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.9,
      child: Image.asset("assets/images/image.jpeg"),
    );
  }
}
