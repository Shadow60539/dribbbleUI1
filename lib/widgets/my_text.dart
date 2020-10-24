import 'package:dribbble1/core/colors.dart';
import 'package:flutter/material.dart';

class BlackText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;

  const BlackText(this.text, {this.weight = FontWeight.w400, this.size})
      : assert(text != null);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: kBlack,
          fontFamily: 'Gilroy',
          fontSize: size,
          fontWeight: weight),
    );
  }
}

class GreyText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;

  const GreyText(this.text, {this.weight = FontWeight.w400, this.size})
      : assert(text != null);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: kGrey,
          fontFamily: 'Gilroy',
          fontSize: size,
          fontWeight: weight),
    );
  }
}

class WhiteText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;

  const WhiteText(this.text, {this.weight = FontWeight.w400, this.size})
      : assert(text != null);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: kWhite,
          fontFamily: 'Gilroy',
          fontSize: size,
          fontWeight: weight),
    );
  }
}

class GreenText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;

  const GreenText(this.text, {this.weight = FontWeight.w400, this.size})
      : assert(text != null);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: kDifferentGreen,
          fontFamily: 'Gilroy',
          fontSize: size,
          fontWeight: weight),
    );
  }
}

class DarkOrangeText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;

  const DarkOrangeText(this.text, {this.weight = FontWeight.w400, this.size})
      : assert(text != null);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: kDarkOrange,
          fontFamily: 'Gilroy',
          fontSize: size,
          fontWeight: weight),
    );
  }
}

class DarkGreenText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;

  const DarkGreenText(this.text, {this.weight = FontWeight.w400, this.size})
      : assert(text != null);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: kDarkGreen,
          fontFamily: 'Gilroy',
          fontSize: size,
          fontWeight: weight),
    );
  }
}

class DarkPurpleText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;

  const DarkPurpleText(this.text, {this.weight = FontWeight.w400, this.size})
      : assert(text != null);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: kDarkPurple,
          fontFamily: 'Gilroy',
          fontSize: size,
          fontWeight: weight),
    );
  }
}

class BlueText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;

  const BlueText(this.text, {this.weight = FontWeight.w400, this.size})
      : assert(text != null);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: kBlue,
          fontFamily: 'Gilroy',
          fontSize: size,
          fontWeight: weight),
    );
  }
}
