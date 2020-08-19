import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ansh_birtday/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(400.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 250.0,
                      width: 250.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'images/ansh_jungle.png',
                          ),
                        ),
                      ),
                    ),
                  ),
      ),
    );
  }
}