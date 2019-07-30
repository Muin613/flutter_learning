import 'package:flutter/material.dart';
import 'package:flutter_app/activity/third.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Future<Object> data =
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return new GestureWidget();
        }));
      },
      child: DecoratedBox(
          decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('images/dart.png')),
      )),
    );
  }
}
