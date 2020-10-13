import 'package:flutter/material.dart';
import 'package:navigasyon_islemleri/b_sayfasi.dart';
import 'package:navigasyon_islemleri/c_sayfasi.dart';

class ASayfasi extends StatelessWidget {
  const ASayfasi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigasyon İşlemleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
              child: Text(
                "B Sayfasi",
                style: TextStyle(fontSize: 40),
              ),
              color: Colors.orange,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BSayfasi(),
                    ));
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
