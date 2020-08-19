import 'package:flutter/material.dart';
import 'package:ansh_birtday/home.dart';
import 'package:ansh_birtday/quizpage.dart';

class resultpage extends StatefulWidget {
  int marks;
  final String langname;
  

  resultpage({Key key , @required this.marks ,@required this.langname}) : super(key : key);
  @override
  _resultpageState createState() => _resultpageState(marks,langname);
}

class _resultpageState extends State<resultpage> {

  List<String> images = [
    "images/minion_brthday.png",
    "images/birthday.png",
    "images/cake.png",
  ];

  String message;
  String image;

  int marks;
  final String langname;
  _resultpageState(this.marks, this.langname);
  
  @override
  void initState(){
    if(marks < 20){
      image = images[2];
      message = "You scored $marks \n and $langname is Ansh's best friend";
    }else if(marks < 35){
      image = images[1];
      message = "You scored $marks \n and $langname is Ansh's best friend";
    }else{
      image = images[0];
      message = "You scored $marks \n and $langname is Ansh's best friend";
    }
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HAPPY 20th BIRTHDAY ANSH",
          //langname,
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 15.0,
                      ),
                      child: Center(
                      child: Text(
                        message,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: "Quando",
                        ),
                      ),
                    )
                    ),
                  ],
                ),
              ),
            ),            
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => homepage(),
                    ));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                  splashColor: Colors.indigoAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}