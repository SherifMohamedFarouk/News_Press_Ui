import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{git init

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:("News_app"),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:Colors.lightBlue),
      home: Home(),
    );
  }
}
