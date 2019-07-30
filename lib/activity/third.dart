import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GestureWidget extends StatefulWidget {
  ValueChanged<bool> onChanged;
  @override
  State<StatefulWidget> createState() {
    return GestureState();
  }
}

class GestureState extends State<GestureWidget> {
  bool _active = false;
  double x = 0, y = 0;

  void _handleTap() {
    print("tap");
    setState(() {
      _active = !_active;
    });
  }

  void _handleMove(LongPressMoveUpdateDetails details) {
    setState(() {
      y = details.localPosition.dy;
      x = details.localPosition.dx;
    });
    print("move,x=$x ; y=$y");
  }

  void _handleDown(TapDownDetails details) {
    setState(() {
      x = details.localPosition.dx;
      y = details.localPosition.dy;
    });
    print("down,x=$x ; y=$y");
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      onLongPressMoveUpdate: _handleMove,
      onTapDown: _handleDown,
      child: new Container(
        color: Color.fromARGB(255, 0, 0, 255),
        child: new Center(
          child: Container(
            width: 20 + x,
            height: 20 + y,
            padding: EdgeInsets.symmetric(),
//            color: Color.fromARGB(255, 255, 255, 0),
            decoration: BoxDecoration(color:  Colors.lightGreen[700]),
            child: new Text(
              "爱你哟$_active",
              style:
              TextStyle(
                decoration: TextDecoration.none,
                  backgroundColor: Color(0xFFFF0000), color: Color(0xff000000)),
            ),
          ),
        ),
      ),
    );
  }
}
