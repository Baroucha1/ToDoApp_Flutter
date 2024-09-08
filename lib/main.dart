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
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: Text("My App Bar"),
          backgroundColor: Colors.deepPurple,
         elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout))],
        ),
        body: Center(
          child: GestureDetector(
            onTap: (){
              userTapped();
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[200],
              child: Center(
                child: Text("Tap me"),
              ),
            ),
          ),
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


