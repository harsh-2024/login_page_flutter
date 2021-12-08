import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

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
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    radius: 25,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.search_rounded,
                      color: Colors.black45,
                      size: 40,
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.notifications_rounded,
                      color: Colors.black45,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.black45,
                      size: 40,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      'Discover Your \nFavourite Joy.',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'More',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          // image: NetworkImage(
                          //     'https://images.unsplash.com/photo-1542038784456-1ea8e935640e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG9ncmFwaHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')),
                          height: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1542038784456-1ea8e935640e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG9ncmFwaHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')),
                              borderRadius: BorderRadius.circular(20)),
                          width: 130,
                          margin:
                              EdgeInsets.only(left: 20, bottom: 10, right: 10),
                        ),
                        Text('Photography')
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/photos/collage-with-michelangelos-david-and-male-portrait-picture-id1188911485?b=1&k=20&m=1188911485&s=170667a&w=0&h=NsfYNU1GotWBFJaoviXq3Ui_rNRRONUUnpNCBJD1IPw=')),
                              borderRadius: BorderRadius.circular(20)),
                          width: 130,
                          margin: EdgeInsets.only(bottom: 10, right: 10),
                        ),
                        Text('Visual Design')
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/photos/laptop-computer-with-books-pen-and-yellow-legal-pad-picture-id92259124?b=1&k=20&m=92259124&s=170667a&w=0&h=6_eHLehWQdrhysXf8c1d3Zae3uTrKLhjMTNpdk5RSj4=')),
                              borderRadius: BorderRadius.circular(20)),
                          width: 130,
                          margin: EdgeInsets.only(bottom: 10, right: 10),
                        ),
                        Text('Popularity')
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 130,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/photos/fine-art-abstract-floral-painting-background-picture-id1258336471?b=1&k=20&m=1258336471&s=170667a&w=0&h=9axQbqJmQz3qAGDJEqGWiDLnJ3Thvj55NrhqWcifaFg=')),
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.only(bottom: 10, right: 10),
                        ),
                        Text('Art')
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Recommended',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      // image: NetworkImage(
                      //     'https://images.unsplash.com/photo-1542038784456-1ea8e935640e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG9ncmFwaHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')),
                      // height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')),
                          borderRadius: BorderRadius.circular(20)),
                      width: 300,
                      margin: EdgeInsets.only(left: 20, bottom: 10, right: 10),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://media.istockphoto.com/photos/watercolor-illustration-of-a-butterfly-picture-id1330461537?b=1&k=20&m=1330461537&s=170667a&w=0&h=B0RE10jSbagGy4Dkp_vg7k8LaRlsRLn7fGDbYF7aJPI=')),
                          borderRadius: BorderRadius.circular(20)),
                      width: 300,
                      margin: EdgeInsets.only(bottom: 10, right: 10),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1482160549825-59d1b23cb208?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGFydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')),
                          borderRadius: BorderRadius.circular(20)),
                      width: 300,
                      margin: EdgeInsets.only(bottom: 10, right: 10),
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://media.istockphoto.com/photos/black-acrylic-brush-strokes-picture-id1278669814?b=1&k=20&m=1278669814&s=170667a&w=0&h=YwoefAXbhJzGS569TMMfXetEDJ1uJEMLTpc-B_rSXD4=')),
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.only(bottom: 10, right: 10),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
