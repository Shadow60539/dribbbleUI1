import 'package:dribbble1/core/colors.dart';
import 'package:flutter/material.dart';

import 'chart_painter.dart';
import 'my_text.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4))
          ..addListener(() {
            setState(() {});
          })
          ..forward();
    _animation = Tween<double>(begin: 0.6, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOutBack),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return CustomPaint(
      foregroundPainter: ChartPainter(value: _animation.value),
      child: Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 20),
          height: height / 4,
          margin: EdgeInsets.symmetric(horizontal: 30),
          width: width,
          decoration: BoxDecoration(
            color: kBlack,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GreyText('2'),
              GreyText('4'),
              GreyText('6'),
              GreyText('8'),
              GreyText('10'),
              GreyText('12'),
            ],
          )),
    );
  }
}
