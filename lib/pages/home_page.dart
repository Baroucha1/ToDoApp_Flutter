
import 'package:blogapp/util/dialog_box.dart';
import 'package:blogapp/util/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});


  @override
  State<StatefulWidget> createState() => _HomePageStat();

}

class _HomePageStat extends State<HomePage>{
  // text controller
  final _controller = TextEditingController();
  List toDoList = [
    ["make Tutorial", false],
    ["Buy dvd", true],
  ];

  void checkBoxChanged(bool value, int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // save new task
  void saveNewTask(){
    setState(() {
        toDoList.add([_controller.text, false]);
        _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask(){
    showDialog(
      context: context,
      builder: (context){
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: ()=> Navigator.of(context).pop(),
        );
      },
    );
  }

  // delete task
  void deleteTask(index){
    setState(() {
      toDoList.removeAt(index);
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
      floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: Icon(Icons.add),),
      body: ListView.builder(itemCount: toDoList.length ,itemBuilder: (context, index){
        return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value!, index),
            deleteFunction: (context) => deleteTask(index),
        );
      },)
    );
  }
}