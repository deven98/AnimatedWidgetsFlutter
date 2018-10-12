import 'package:flutter/material.dart';

class HeroAnimationDemo extends StatefulWidget {
  @override
  _HeroAnimationDemoState createState() => _HeroAnimationDemoState();
}

class _HeroAnimationDemoState extends State<HeroAnimationDemo> {
  var colors = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.cyan,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return new HeroDetailPage();
                      },
                    ),
                  );
                },
                splashColor: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Hero(
                          tag: "heroTag",
                          child: Container(
                            color: Colors.red,
                            height: 100.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text("Red"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeroDetailPage extends StatefulWidget {
  @override
  _HeroDetailPageState createState() => _HeroDetailPageState();
}

class _HeroDetailPageState extends State<HeroDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Hero(
              tag: "heroTag",
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(child: Text("This is the color red.", style: TextStyle(fontSize: 20.0),)),
            ),
          ),
        ],
      ),
    );
  }
}
