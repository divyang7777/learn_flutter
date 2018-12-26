import 'package:flutter/material.dart';
import 'package:learn_flutter/UI/Login.dart';
// import './UI/home.dart';

void main() {
  var title = 'Make It Rain!';
  runApp(new MaterialApp(
    title: title,
    home: new Login(),
    // home: new MakeItRain(),
    // home:Home(title: title,),
  ));
}
