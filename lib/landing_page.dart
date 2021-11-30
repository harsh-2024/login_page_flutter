import 'dart:ui';

import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  // final _formKey = GlobalKey<FormState>();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: ListView(
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
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.grey)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Your Email Address';
                      }
                    }),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     if (_formKey.currentState!.validate()) {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         const SnackBar(content: Text('Processing Data')),
              //       );
              //     }
              //   },
              //   child: const Text('Submit'),
              // ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 30, top: 15),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 290),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          )),
        ],
      ),
    ));
  }
}
