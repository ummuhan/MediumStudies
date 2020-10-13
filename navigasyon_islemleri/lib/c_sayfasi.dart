import 'package:flutter/material.dart';

class CSayfasi extends StatelessWidget {
  String yazi;
  CSayfasi(String metin) {
    yazi = metin;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("C Sayfasi"),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
                Text(
                  yazi,
                ),
              ],
            ),
          ),
        ));
  }
}
