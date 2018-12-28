import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BmiState();
  }
}

class BmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'BMI',
          style: new TextStyle(
              color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            new Image.asset(
              'images/bmilogo.png',
              height: 150.0,
              width: 120.0,
            ),
            new Container(
                height: 280.0,
                width: 400.0,
                color: Colors.grey.shade300,
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Age',
                          icon: Icon(
                            Icons.person_outline,
                          ),
                          hintText: 'Enter Your Age'),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(3.0),
                    ),
                    new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Height in feet',
                          icon: Icon(
                            Icons.insert_chart,
                          ),
                          hintText: 'Enter Your Age'),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(3.0),
                    ),
                    new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Weight in Llb',
                          icon: Icon(
                            Icons.toc,
                          ),
                          hintText: 'Enter Your Age'),
                    ),
                    new Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    new RaisedButton(
                        onPressed: null,
                        child: new Text(
                          'Calculate',
                          style: new TextStyle(
                            color: Colors.white,
                          ),
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
