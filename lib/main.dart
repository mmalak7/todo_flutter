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
                    MaterialPageRoute(builder: (context) => CreateTaskPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class CreateTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF6747ce),
    );
  }
}

// class CreateTaskPage extends StatefulWidget {
//   @override
//   _CreateTaskPageState createState() => _CreateTaskPageState();
// }

// class _CreateTaskPageState extends State<CreateTaskPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
