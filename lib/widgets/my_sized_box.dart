import 'package:flutter/material.dart';

class WidthSpace extends StatelessWidget {
  final double width;

  const WidthSpace(this.width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

class HeightSpace extends StatelessWidget {
  final double height;

  const HeightSpace(this.height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
