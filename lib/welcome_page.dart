import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  radius: 20,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                'Discover Your Joy',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[Card()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
