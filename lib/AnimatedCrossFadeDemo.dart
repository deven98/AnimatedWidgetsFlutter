import 'package:flutter/material.dart';

class AnimatedCrossFadeDemo extends StatefulWidget {
  @override
  _AnimatedCrossFadeDemoState createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  bool firstStateEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              firstChild: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ),
                height: 200.0,
                width: 200.0,
              ),
              secondChild: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlutterLogo(),
                ),
                height: 200.0,
                width: 200.0,
              ),
              crossFadeState: firstStateEnabled
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 1500),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: FlatButton(
                onPressed: () {
                  firstStateEnabled = false;
                  setState(() {});
                },
                color: Colors.blue,
                child: Text(
                  "Trigger crossfade",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
