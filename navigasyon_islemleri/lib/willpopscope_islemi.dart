import 'package:flutter/material.dart';

class WillPopScopeIslemi extends StatelessWidget {
  const WillPopScopeIslemi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İlk Sayfa"),
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
                    builder: (context) => GondericiSayfa(),
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

class GondericiSayfa extends StatelessWidget {
  const GondericiSayfa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint("WillPopScope çalıştı");
        Navigator.pop(context, false);
        return Future.value(
            false); //Bu kısmda kesinlikle false vermemiz gerekmektedir.
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Gonderici Sayfa"),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                child: Text("True dönen buton"),
                color: Colors.pink,
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
