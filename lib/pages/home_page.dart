
import 'package:blogapp/util/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});


  @override
  State<StatefulWidget> createState() => _HomePageStat();

}

class _HomePageStat extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text('To Do')),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: const [
          ToDoTile(taskName: "doudou", taskCompleted: true, onChanged: (p0){},

          ),   
        ],
      ),
    );
  }
}