import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

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
              'Todo App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                letterSpacing: 4,
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.0),
              ),
              padding: EdgeInsets.all(16.0),
              color: Colors.white,
              child: Text(
                'Display tasks',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 2,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TaskPage()));
              },
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
                      child: Text(
                        'Create task',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 2,
                        ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF6747ce),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.0),
              ),
              padding: EdgeInsets.all(16.0),
              color: Colors.white,
              child: Text(
                'Back to all tasks',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 2,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TaskPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
