import 'dart:async';

import 'package:flutter/material.dart';

class _CircularProgressIndicatorApp extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
      return _CircularProgressIndicatorAppState();
    }
  }
  
  class _CircularProgressIndicatorAppState
      extends State<_CircularProgressIndicatorApp> {
    double _progress = 0;
  
    void startTimer() {
      new Timer.periodic(
        Duration(seconds: 1),
        (Timer timer) => setState(
          () {
            if (_progress == 1) {
              timer.cancel();
            } else {
              _progress += 0.2;
            }
          },
        ),
      );
    }
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Woolha.com Flutter Tutorial'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(
                  strokeWidth: 10,
                  backgroundColor: Colors.cyanAccent,
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                  value: _progress,
                ),
                RaisedButton(
                  child: Text('Start timer'),
                  onPressed: () {
                    setState(() {
                      _progress = 0;
                    });
                    startTimer();
                  },
                ),
              ],
            ),
          ),
        ),
      );
    }
  }