import 'package:flutter/material.dart';
import 'package:todoSimple/models/TaskModel.dart';
import 'package:todoSimple/screens/createtask/createTask.dart';
import 'package:todoSimple/screens/welcomepage/welcomePage.dart';

TaskModel taskModel = new TaskModel();

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //new line
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
                SizedBox(
                  height: 30.0,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: taskModel.getTotalList(),
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.fromLTRB(4, 12, 12, 4),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                taskModel.getTask(index),
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              Ink(
                                width: 36.0,
                                height: 36.0,
                                decoration: const ShapeDecoration(
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  iconSize: 18.0,
                                  icon: Icon(Icons.done),
                                  color: Colors.black,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30.0,
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
                            'create task',
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
