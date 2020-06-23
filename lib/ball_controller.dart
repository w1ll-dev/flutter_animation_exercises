import 'package:flutter/cupertino.dart';

class BallController extends ChangeNotifier{
  double x = 0.0;
  double y = 0.0;
  double size = 50;

  Cubic curve = Curves.easeInOut;
  Duration duration = Duration(milliseconds: 200);

  void setSize({double newSize}){
    this.size = newSize;
    notifyListeners();
  }

  void setTranslate({double newX, double newY}){
    if(newX != null){
      this.x = newX;
    }
    if(newY != null){
      this.y = newY;
    }
    notifyListeners();
  }
}