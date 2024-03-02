import 'package:hive_flutter/hive_flutter.dart';
class ToDoDataBase {

  List toDoList = [];

  final _mybox = Hive.box('mybox');

  void createInitiaData(){
    toDoList = [
      ["Make Tutorial",false],
      ["Do Exercise",false],
    ];
  }


  void loadData(){
    toDoList = _mybox.get('TODOLIST');
  }

  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}