import 'package:blogapp/pages/second_page.dart';
import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("1st Page"),),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()),);
        },
        child: Text("go to second page")),
      ),
    );
}
}