import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data;
    return Scaffold(
      appBar: AppBar(
        title: Text("Okunması Gereken Kitaplar"),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future:
                DefaultAssetBundle.of(context).loadString('assets/book.json'),
            builder: (context, snapshot) {
              var myData = jsonDecode(snapshot.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(
                        right: 20, left: 20, bottom: 1, top: 10),
                    padding: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  myData[index]['kitapAdi'],
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text("Yazar:" + myData[index]['yazar']),
                              ],
                            ),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            child: Image.asset("assets/images/" +
                                myData[index]["resim"] +
                                ".jpg"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: myData == null ? 0 : myData.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
