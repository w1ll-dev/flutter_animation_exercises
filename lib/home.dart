import 'package:anim_test/ball_controller.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  BallController ballController = BallController();

  AnimatedBuilder _ball() => AnimatedBuilder(
        animation: ballController,
        builder: (controller, snapshot) => AnimatedContainer(
          width: 50,
          height: 50,
          transform: Matrix4.identity()
            ..translate(ballController.x, ballController.y),
          curve: ballController.curve,
          duration: ballController.duration,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () =>
                ballController.setTranslate(newX: ballController.x - 50),
            child: Icon(Icons.keyboard_arrow_left),
          ),
          FloatingActionButton(
            onPressed: () =>
                ballController.setTranslate(newY: ballController.y - 50),
            child: Icon(Icons.keyboard_arrow_up),
          ),
          FloatingActionButton(
            onPressed: () =>
                ballController.setTranslate(newY: ballController.y + 50),
            child: Icon(Icons.keyboard_arrow_down),
          ),
          FloatingActionButton(
            onPressed: () =>
                ballController.setTranslate(newX: ballController.x + 50),
            child: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
      body: Center(
        child: _ball(),
      ),
    );
  }
}
