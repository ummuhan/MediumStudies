import 'package:flutter/material.dart';

class BirinciSayfa extends StatelessWidget {
  const BirinciSayfa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birinci sayfa"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Diğer sayfaya geç."),
              color: Colors.pink,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IkinciSayfa(),
                  ),
                ).then(
                  (value) => debugPrint("$value"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Veri gönder."),
              color: Colors.purple,
              onPressed: () {
                Navigator.pop(context, 15);
              },
            )
          ],
        ),
      ),
    );
  }
}
