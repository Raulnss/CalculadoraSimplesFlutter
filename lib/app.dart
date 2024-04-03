import 'package:calculadora/inicio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: inicio(),
    );
  }
}