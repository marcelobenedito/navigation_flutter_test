import 'package:flutter/material.dart';

class SecondaryScreen extends StatefulWidget {

  String valor;
  SecondaryScreen({this.valor});

  @override
  _SecondaryScreenState createState() => _SecondaryScreenState();
}

class _SecondaryScreenState extends State<SecondaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secondary Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text("Second Screen with value from main screen"),
            RaisedButton(
              child: Text("Go to first screen"),
              padding: EdgeInsets.all(15),
              onPressed: (){
                Navigator.pushNamed(context, "/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
