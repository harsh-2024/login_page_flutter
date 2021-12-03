import 'dart:ui';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

TextEditingController controller = TextEditingController();

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
  // final _formKey2 = GlobalKey<FormState>();

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
                  controller: controller,
                  keyboardType: TextInputType.emailAddress,
                  // inputFormatters: [
                  //   FilteringTextInputFormatter.allow(EmailValidationPage())),

                  // ],
                  autofocus: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      border: UnderlineInputBorder(),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Colors.grey)),
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Enter a valide email'
                          : null,
                ),
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
                      icon: Icon(Icons.password_rounded),
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
                      final email = controller.text;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Your Email is $email')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      child: Divider(
                        color: Colors.black,
                        // height: 75,
                        indent: 80,
                        endIndent: 80,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Center(child: Text('Sign Up using')),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Image(
                        image: AssetImage('images/ggl.png'),
                        height: 50,
                        width: 50,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    ));
  }
}
