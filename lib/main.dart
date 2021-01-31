
import 'package:flutter/material.dart';
import 'package:navigation/SecondaryScreen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/secondary": (context) => SecondaryScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    )
  );
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            RaisedButton(
              child: Text("Go to second screen"),
              padding: EdgeInsets.all(15),
              onPressed: (){
                Navigator.pushNamed(context, "/secondary");
              },
            ),
          ],
        ),
      ),
    );
  }
}
