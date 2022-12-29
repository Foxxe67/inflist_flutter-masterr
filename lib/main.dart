import 'package:flutter/material.dart';
import 'dart:math';

class MyBody extends StatefulWidget {
  @override
  createState() => new MyBodyState();
}

class MyBodyState extends State<MyBody> {
  List<String> _array = [];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return new Divider();
      final int index = i ~/ 2;
      if (index >= _array.length)
        _array.addAll(['$index', '${index + 1}', '${index + 2}']);
      return Text(
          "2 ^ " +
              _array[index] +
              " = " +
              pow(2, int.parse(_array[index]).toDouble()).toStringAsFixed(0),
          style: TextStyle(fontFamily: 'Arial', fontSize: 20));
    });
  }
}

void main() => runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Scaffold(
        body: new Center(
      child: new MyBody(),
    ))));
