import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];
  //reference our box
  final _myBox = Hive.box('mybox');

  // run this method is this the first time ever opening this app
  void createInitialData(){
    toDoList = [
      ["jarloula",false],
    ];
  }

  // loadData
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  // updateData
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}