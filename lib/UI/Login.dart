import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            new Image.asset(
              'images/face.png',
              width: 90.0,
              height: 90.0,
              color: Colors.white,
            ),
            new Container(
              height: 180.0,
              width: 380.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                        hintText: 'Username', icon: new Icon(Icons.person)),
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                        hintText: 'passsword', icon: new Icon(Icons.lock)),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(10.5)
                  ),
                  new Center(
                      child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new RaisedButton(
                            color: Colors.redAccent,
                            child: new Text(
                              'Login',
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 16.9),
                            ),
                            onPressed: () => debugPrint('Login')),
                      )
                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
