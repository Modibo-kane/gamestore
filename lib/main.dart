import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Game Store",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Ma App bar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight(600)
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
