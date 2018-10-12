import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  var color = Colors.blue;
  var height = 100.0;
  var width = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  color: color,
                  height: height,
                  width: width,
                ),
              ],
            ),
          ),
          Center(
            child: RaisedButton(onPressed: () {
              color = Colors.green;
              height = MediaQuery.of(context).size.height;
              width = MediaQuery.of(context).size.width;
              setState(() {});
            }, child: Text("Animate!", style: TextStyle(color: Colors.white),), color: Colors.green,),
          ),
        ],
      ),
    );
  }
}
