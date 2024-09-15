import 'package:hive/hive.dart';
import 'package:blogapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive for Flutter
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('mybox');
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
      debugShowCheckedModeBanner: false,
      home: HomePage(),


    );
  }
}




