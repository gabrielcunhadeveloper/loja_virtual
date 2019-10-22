import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja Virtual',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
//        primaryColor: Color.fromARGB(255, 182, 107, 107)
          primaryColor: Color.fromARGB(255, 211, 118, 130),
      ),
      home: HomeScreen(),
    );
  }
}

