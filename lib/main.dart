import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        body: ListView(
          children: [
            Expanded(
              child: Container(
               height: 350,
                color: Colors.deepPurple,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 350,
                color: Colors.deepPurple[300],
              ),
            ),
            Expanded(
              child: Container(
            height: 350,
                
                color: Colors.deepPurple[200],
              ),
            )
          ],
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


