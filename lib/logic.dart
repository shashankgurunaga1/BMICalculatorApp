import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}
class _DemoState extends State<Demo> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _result=0;

  @override
    Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        title: Text('BMI Calculator'),
    centerTitle: true,
    backgroundColor: Colors.blue,
        ),
        body: Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
    children: <Widget>[
    TextField(
    controller: _heightController,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
    labelText: 'Height (in cm)',
    icon: Icon(Icons.trending_up),
    ),
    ),
    SizedBox(height: 20),
    TextField(
    controller: _weightController,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
    labelText: 'Weight(in kg)',
    icon: Icon(Icons.line_weight),
    ),
    ),
    SizedBox(height: 15),
    ElevatedButton(

    child: Text(
    "Calculate BMI",
    style: TextStyle(color: Colors.white),
    ),
    onPressed: calculateBMI,

    ),
    SizedBox(height: 15),
    Text(
    _result == null ? "Enter Value" : "${_result.toStringAsFixed(2)}",
    style: TextStyle(
    color: Colors.redAccent,
    fontSize: 20.8,
    fontWeight: FontWeight.w500,
    ),
    ),

      ],
    ),
    ),
    );
  }
  void calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;

    _result = result;

    setState(() {});
  }
  }