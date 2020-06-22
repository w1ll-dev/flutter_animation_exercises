import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Ticker _ticker;
  double size = 50.0;
  double dy = 0.5;
  double x = 100.0;
  double y = 100.0;
  int gravity = 1;

  @override
  void initState() {
    super.initState();
    _ticker = Ticker((now) {
      setState(() {});
    });
    _ticker.start();
  }

  @override
  void dispose() {
    super.dispose();
    _ticker.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    if (y > height - size) {
      dy = -dy;
    }
    dy += gravity;
    y += dy;
    return Scaffold(
      body: Transform.translate(
        offset: Offset(x, y),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
