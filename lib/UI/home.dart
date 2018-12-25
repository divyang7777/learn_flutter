import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.amberAccent,
      alignment: Alignment.center,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            'Item One',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 12.9),
          ),
          new Text(
            'Item Two',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 12.9),
          ),
          const Expanded(child: const Text('Dee_BUG'))
//          new Text(
//            'Item Three',
//            textDirection: TextDirection.ltr,
//            style: TextStyle(fontSize: 12.9),
//          ),
        ],
      ),
//      child: new Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          new Text(
//            'First Item',
//            textDirection: TextDirection.ltr,
//            style: TextStyle(color: Colors.blueAccent),
//          ),
//          new Text(
//            'Second Item',
//            textDirection: TextDirection.ltr,
//            style: TextStyle(color: Colors.redAccent),
//          ),
//          new Container(
//            color: Colors.yellowAccent,
//            alignment: Alignment.center,
//            child: new Text(
//              'Third Item',
//              textDirection: TextDirection.ltr,
//              style: TextStyle(color: Colors.greenAccent),
//            ),
//          )
//        ],
//      ),
    );
  }
}
