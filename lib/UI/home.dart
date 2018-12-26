import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new makeItRainState();
  }
}

class makeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;

  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Make It Rain!'),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
                child: new Text(
              'Get Rich!',
              style: new TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 29.9),
            )),
            new Expanded(
              child: new Center(
                child: new Text('\$$_moneyCounter',
                  style: new TextStyle(
                      color: _moneyCounter > 5000 ? Colors.green: Colors.red,
                      fontSize: 46.9,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new FlatButton(
                  color: Colors.lightGreen,
                  textColor: Colors.white70,
                  onPressed: () => _rainMoney(),
                  child: new Text(
                    'Let It Rain!',
                    style: new TextStyle(
                      fontSize: 19.9,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class Home extends StatelessWidget {
//   final String title;

//   Home({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return new Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: new Text(title),
//         ),
//         body: new Container(
//           alignment: Alignment.topCenter,
//           child: new Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               new Text(
//                 'Get Rich!',
//                 textDirection: TextDirection.ltr,
//                 style: new TextStyle(
//                     fontSize: 38.5,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.grey),
//               ),
//               new Padding(
//                 padding: EdgeInsetsDirectional.only(top: 160.0),
//                 child: new Text(
//                   '\$1400',
//                   style: new TextStyle(
//                       fontSize: 80.0,
//                       fontWeight: FontWeight.w900,
//                       color: Colors.lightGreen),
//                 ),
//               ),
//               new Padding(
//                 padding: EdgeInsetsDirectional.only(top: 200.0),
//                 child: new CustomBotton(),
//               )
//             ],
//           ),
//         ));
//   }
// }

// class CustomBotton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return new GestureDetector(
//       onTap: () {
//         final snackBar = new SnackBar(
//           backgroundColor: Theme.of(context).backgroundColor,
//           content: new Text("Hello Gesture"),
//           duration: new Duration(
//               hours: 0,
//               minutes: 0,
//               seconds: 0,
//               milliseconds: 4100,
//               microseconds: 0),
//         );

//         Scaffold.of(context).showSnackBar(snackBar);
//       },
//       child: new Container(
//         padding: new EdgeInsets.all(15.0),
//         decoration: new BoxDecoration(
//           color: Colors.green.shade400,
//           borderRadius: new BorderRadius.circular(5.5),
//         ),
//         child: new Text('Let It Rain!',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,color: Colors.white),),
//       ),
//     );
//   }
// }
