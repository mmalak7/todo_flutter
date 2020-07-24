import 'package:flutter/material.dart';
import 'package:todoSimple/createTask.dart';
import 'package:todoSimple/task.dart';

void main() {
  runApp(MainApp());
}

TaskUtils taskUtils = new TaskUtils();

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF6747ce),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.library_books,
              color: Colors.white,
              size: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'WELCOME TO',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 3,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'todo app',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                letterSpacing: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.0),
                ),
                padding: EdgeInsets.all(14.0),
                color: Colors.white,
                child: Text(
                  'DISPLAY TASKS',
                  style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 2,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TaskPage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF6747ce),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  builder: (context) => MainPage()));
                        },
                      ),
                    ),
                    Text(
                      'today\'s tasks',
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
                        icon: Icon(Icons.done_all),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainPage()));
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26.0),
                      ),
                      padding: EdgeInsets.all(16.0),
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add),
                          Text(
                            'Create task',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateTaskPage()));
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CreateTaskPage extends StatefulWidget {
  @override
  _CreateTaskPageState createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  final textFieldController = TextEditingController();

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
                          print(taskUtils.getTaskListLength());
                          Task newTask = new Task(
                              taskUtils.getTaskListLength() + 1,
                              textFieldController.text);
                          taskUtils.addNewTask(newTask);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TaskPage()));
                          print(taskUtils.getTaskListLength());
                        },
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: testForm(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget testForm() {
    return TextField(
      style: TextStyle(
        color: Colors.white,
      ),
      autofocus: true,
      maxLength: 50,
      decoration: InputDecoration(
        labelText: "todo task",
        fillColor: Colors.white,
        labelStyle: new TextStyle(
          color: Colors.white,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
