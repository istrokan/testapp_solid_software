import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  var bonus = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test App for Solid Software"),
          centerTitle: true,
        ),
        body: Center(
            child: InkWell(
              onTap: changeColor,
              child: Container(
                color: _color,
                width: double.infinity,
                height: double.infinity,
                child: Center(
                    child: Container(
                      child: Text(
                        "Hey there\nBonus: ${bonus++}" ,
                        style: TextStyle(fontSize: 30, ),
                      ),
                    )),
              ),
            )));
  }
}
