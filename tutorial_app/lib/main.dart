import 'package:flutter/material.dart';
import './productManager.dart';


main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      theme: ThemeData( //Theme settings for the app
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.purple,
        brightness : Brightness.dark
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager("wwww"),
        ),
    );
  }
}
