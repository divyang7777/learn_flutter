import 'package:flutter/material.dart';
import './UI/home.dart';

void main() {
  var title = 'Make It Rain!';
  runApp(new MaterialApp(
    title: title,
    home: new MakeItRain(),
    // home:Home(title: title,),
  ));
}
