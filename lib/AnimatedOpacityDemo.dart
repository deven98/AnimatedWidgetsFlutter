import 'package:flutter/material.dart';

class AnimatedOpacityDemo extends StatefulWidget {
  @override
  _AnimatedOpacityDemoState createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {

  var myOpacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedOpacity(
                child: FlutterLogo(size: 100.0,),
                opacity: myOpacity,
                duration: Duration(seconds: 1),
              ),
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: () {
                myOpacity = 0.0;
                setState(() {});
              },
              child: Text(
                "Click here to change opacity",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
