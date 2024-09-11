import 'package:blogapp/pages/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void userTapped(){
    print("user tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),

    );
  }
}


