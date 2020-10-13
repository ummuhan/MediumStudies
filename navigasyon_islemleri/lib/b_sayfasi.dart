import 'package:flutter/material.dart';
import 'package:navigasyon_islemleri/c_sayfasi.dart';

class BSayfasi extends StatelessWidget {
  const BSayfasi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String yazi = "C Sayfasi";
    return Scaffold(
      appBar: AppBar(
        title: Text("B Sayfasi"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          "A",
          style: TextStyle(fontSize: 30),
        ),
        onPressed: () {
          //Sadece geri gelme işlemi yapar stackten çıkmasını sağlar.
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(
                "C Sayfasi",
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
              color: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CSayfasi(yazi)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
