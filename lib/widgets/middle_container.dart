import 'package:dribbble1/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'my_sized_box.dart';
import 'my_text.dart';

class MiddleContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height / 1.4,
      padding: EdgeInsets.only(top: 20),
      width: width - 40,
      decoration: BoxDecoration(
        color: kWhite,
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 10)
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreyText(
                    'TYPE',
                    size: 12,
                    weight: FontWeight.bold,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightOrange,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkOrangeText(
                      'FEE',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightGreen,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkGreenText(
                      'SALE',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightPurple,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkPurpleText(
                      'REFUND',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightGreen,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkGreenText(
                      'SALE',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightPurple,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkPurpleText(
                      'REFUND',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreyText(
                    'DETAIL',
                    size: 12,
                    weight: FontWeight.bold,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      'Unity Gaming',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      'Cesis WordPress',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      '3D Characters',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      'Unity Dashboard',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      '#2098378',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreyText(
                    'PRICE',
                    size: 12,
                    weight: FontWeight.bold,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$28',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$69',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$72',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$26',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$60',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          HeightSpace(20),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: OutlineButton(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  WidthSpace(10),
                  BlackText(
                    'More Options',
                    weight: FontWeight.bold,
                  ),
                  WidthSpace(15),
                  SvgPicture.asset(
                    'assets/controls.svg',
                    height: 15,
                    width: 15,
                  ),
                  WidthSpace(10),
                ],
              ),
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class MiddleContainerFull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height / 1.4,
      padding: EdgeInsets.only(top: 20),
      width: width - 40,
      decoration: BoxDecoration(
        color: kWhite,
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 10)
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreyText(
                    'TYPE',
                    size: 12,
                    weight: FontWeight.bold,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightOrange,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkOrangeText(
                      'FEE',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightGreen,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkGreenText(
                      'SALE',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightPurple,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkPurpleText(
                      'REFUND',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightGreen,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkGreenText(
                      'SALE',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightPurple,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkPurpleText(
                      'REFUND',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightOrange,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkOrangeText(
                      'FEE',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightGreen,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkGreenText(
                      'SALE',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightPurple,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkPurpleText(
                      'REFUND',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kLightGreen,
                        borderRadius: BorderRadius.circular(10)),
                    child: DarkGreenText(
                      'SALE',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreyText(
                    'DETAIL',
                    size: 12,
                    weight: FontWeight.bold,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      'Unity Gaming',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      'Cesis WordPress',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      '3D Characters',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      'Unity Dashboard',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      '#2098378',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      'Unity Gaming',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      'Cesis WordPress',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      '3D Characters',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerLeft,
                    child: GreyText(
                      'Unity Dashboard',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreyText(
                    'PRICE',
                    size: 12,
                    weight: FontWeight.bold,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$28',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$69',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$72',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$26',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$60',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$28',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$69',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$72',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 35,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.centerRight,
                    child: BlackText(
                      '\$26',
                      size: 12,
                      weight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
