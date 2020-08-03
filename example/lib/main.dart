import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:cognito/cognito.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  void getUserContextData() async {
    var encodedData = await Cognito.getUserContextData(
      username: "username",
      userPoolId: "userPoolId",
      clientId: "clientId",
    );
    print(encodedData);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: getUserContextData,
            child: Text("User Context Data"),
          ),
        ),
      ),
    );
  }
}
