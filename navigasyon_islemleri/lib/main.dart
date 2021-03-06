import 'package:flutter/material.dart';
import 'package:navigasyon_islemleri/a_sayfasi.dart';
import 'package:navigasyon_islemleri/willpopscope_islemi.dart';
import 'package:navigasyon_islemleri/then_islemi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Navigasyon İşlemleri',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: WillPopScopeIslemi());
  }
}
