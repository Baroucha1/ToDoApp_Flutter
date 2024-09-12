
import 'package:blogapp/util/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});


  @override
  State<StatefulWidget> createState() => _HomePageStat();

}

class _HomePageStat extends State<HomePage>{
  List toDoList = [
    ["make Tutorial", false],
    ["Buy dvd", true],
  ];

  void checkBoxChanged(bool value, int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }
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
      body: ListView.builder(itemCount: toDoList.length ,itemBuilder: (context, index){
        return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value!, index),
        );
      },)
    );
  }
}