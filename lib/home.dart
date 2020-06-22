import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: AnimatedContainer(
        width: size.width/10,
        height: size.height/10,
        color: Colors.black,
        duration: Duration(seconds: 2),
        
      ),
    );
  }
}
