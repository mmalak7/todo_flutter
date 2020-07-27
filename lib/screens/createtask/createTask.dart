import 'package:flutter/material.dart';
import 'package:todoSimple/models/TaskModel.dart';
import 'package:todoSimple/models/task.dart';
import 'package:todoSimple/screens/taskspage/tasksPage.dart';

TaskModel taskModel = new TaskModel();

class CreateTaskPage extends StatefulWidget {
  @override
  _CreateTaskPageState createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  final textFieldController = TextEditingController();

  Widget customForm() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: 'add task here..',
        hintStyle: TextStyle(color: Colors.white),
        fillColor: Colors.white,
      ),
      style: TextStyle(
        color: Colors.white,
      ),
      controller: textFieldController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //new line
      backgroundColor: Color(0XFF6747ce),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Ink(
                      width: 36.0,
                      height: 36.0,
                      decoration: const ShapeDecoration(
                        color: Color(0XFF7e60db),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        iconSize: 18.0,
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TaskPage()));
                        },
                      ),
                    ),
                    Text(
                      'create task',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    Ink(
                      width: 36.0,
                      height: 36.0,
                      decoration: const ShapeDecoration(
                        color: Color(0XFF7e60db),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        iconSize: 18.0,
                        icon: Icon(Icons.done),
                        color: Colors.white,
                        onPressed: () {
                          int test = taskModel.getTotalList() + 1;
                          Task task = new Task(test, textFieldController.text);
                          taskModel.addTask(task);
                          print(textFieldController.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TaskPage()));
                        },
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: customForm(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
