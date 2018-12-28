import 'package:flutter/material.dart';

class Weightonplanet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new WeightOnPlanetState();
  }
}

class WeightOnPlanetState extends State<Weightonplanet> {
  final TextEditingController _weightController = new TextEditingController();
  int radioValue = 0;
  double _finalResult = 0.0;
  String _formatedText = "";

  void handlerRadioValueChanged(int value) {
    setState(() {
      radioValue = value;

      switch (radioValue) {
        case 0:
          _finalResult = calculateWeight(_weightController.text, 0.06);
          _formatedText =
              "Your Weight on Pluto is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 1:
          _finalResult = calculateWeight(_weightController.text, 0.38);
          _formatedText =
              "Your Weight on Mars is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 2:
          _finalResult = calculateWeight(_weightController.text, 0.91);
          _formatedText =
              "Your Weight on Venus is ${_finalResult.toStringAsFixed(1)}";
          break;

        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Weight on Planet X'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(3.5),
          children: <Widget>[
            new Image.asset(
              'images/planet.png',
              height: 200.0,
              width: 200.0,
            ),
            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: 'Enter YOur Weight on Earth',
                      hintText: 'In Pounds',
                      icon: new Icon(Icons.person_outline),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Radio(
                        activeColor: Colors.brown,
                        value: 0,
                        groupValue: radioValue,
                        onChanged: handlerRadioValueChanged,
                      ),
                      new Text(
                        'Pluto',
                        style: new TextStyle(color: Colors.white30),
                      ),
                      new Radio(
                        activeColor: Colors.red,
                        value: 1,
                        groupValue: radioValue,
                        onChanged: handlerRadioValueChanged,
                      ),
                      new Text(
                        'Mars',
                        style: new TextStyle(color: Colors.white30),
                      ),
                      new Radio(
                        activeColor: Colors.orangeAccent,
                        value: 2,
                        groupValue: radioValue,
                        onChanged: handlerRadioValueChanged,
                      ),
                      new Text(
                        'Venus',
                        style: new TextStyle(color: Colors.white30),
                      ),
                    ],
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(15.6),
                  ),
                  new Text(
                    _weightController.text.isEmpty ? "Please enter weight" : _formatedText + 'lbs',
                    // "$_formatedText lbs",
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 19.4,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double calculateWeight(String weight, double multiplier) {
    if (int.parse(weight).toString().isNotEmpty && int.parse(weight) > 0) {
      return int.parse(weight) * multiplier;
    } else {
      print("Wrong !");
      return int.parse('180') * 0.38;
    }
  }
}
