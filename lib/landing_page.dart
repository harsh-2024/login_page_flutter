import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/background.png'),
                      fit: BoxFit.fill)),
            ),
            Container(
              margin: EdgeInsets.only(left: 25),
              child: Text(
                'LOGIN',
                style: TextStyle(fontSize: 35),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 30, top: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            )
          ],
        )),
      ],
    ));
  }
}
