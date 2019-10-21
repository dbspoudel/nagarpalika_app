import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'header.dart';
import 'screen/home_page.dart';

void main(){
  SystemChrome.setEnabledSystemUIOverlays ([]);
SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, String title}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Header(),
          HomePage(),
        ],
      ),
    );
  }
}
