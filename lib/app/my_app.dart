import 'package:flutter/material.dart';
import 'package:flutterapp/views/detail_view.dart';
import 'package:flutterapp/views/home_view.dart';

class MyApp extends StatelessWidget {

  var routes = {
    "/home": (c) => HomeView(),
    "/detail": (c) => DetailView(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      routes: routes,
      home: HomeView(),
      locale: new Locale('en'),
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
        fontFamily: 'MyText'
      ),
    );
  }
}
