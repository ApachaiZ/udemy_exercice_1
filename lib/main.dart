import 'package:flutter/material.dart';
import 'package:udemy_exercice_1/widgets/reset.dart';
import 'package:udemy_exercice_1/widgets/text_control.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<StatefulWidget> {
  var _textIndex = 0;
  final _textList = const [
    "Premier",
    "Second",
    "Troisième",
    "Quatrième",
    "Cinquième",
    "Sixième",
    "Septième",
    "Huitième",
    "Neuvième",
    "Dixième",
  ];

  void _changeText() {
    setState(() {
      _textIndex++;
    });
  }

  void _resetText() {
    setState(() {
      _textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Exercice 1"),
        ),
        body: _textIndex < _textList.length
            ? TextControl(
                textIndex: _textIndex,
                textList: _textList,
                changeText: _changeText,
              )
            : Reset(resetText: _resetText),
      ),
    );
  }
}
