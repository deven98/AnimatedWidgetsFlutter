import 'package:animated_widget_demo/AnimatedContainerDemo.dart';
import 'package:animated_widget_demo/AnimatedCrossFadeDemo.dart';
import 'package:animated_widget_demo/AnimatedOpacityDemo.dart';
import 'package:animated_widget_demo/HeroAnimationDemo.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new AnimatedContainerDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}