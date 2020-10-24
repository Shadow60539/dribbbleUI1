import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dribbble1/core/colors.dart';
import 'package:dribbble1/widgets/chart.dart';
import 'package:dribbble1/widgets/chart_painter.dart';
import 'package:dribbble1/widgets/fade_animations.dart';
import 'package:dribbble1/widgets/my_sized_box.dart';
import 'package:dribbble1/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EarningsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    Widget _proPic = Stack(
      overflow: Overflow.visible,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 14.0, top: 10),
          child: SvgPicture.asset(
            'assets/pro_pic.svg',
            height: 30,
            width: 30,
          ),
        ),
        Positioned(
          right: 18,
          top: 10,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.redAccent,
            ),
          ),
        )
      ],
    );

    AppBar _appBar = AppBar(
      backgroundColor: kWhite,
      elevation: 0,
      title: BlackText('Earnings', weight: FontWeight.bold),
      centerTitle: true,
      actions: [_proPic],
      leading: IconButton(
        icon: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(color: kGrey, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.arrow_back,
            size: 18,
          ),
        ),
        color: kBlack,
        onPressed: () {},
      ),
    );

    return Scaffold(
      backgroundColor: kWhite,
      appBar: _appBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightSpace(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlackText(
                      'Earnings',
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                    HeightSpace(5),
                    GreyText(
                      'Last 30 days',
                      size: 12,
                    ),
                  ],
                ),
                OutlineButton(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: BlackText(
                    'View Invoice',
                    weight: FontWeight.bold,
                  ),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          HeightSpace(20),
          CarouselSlider.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                margin: EdgeInsets.symmetric(vertical: 10),
                width: width / 2,
                decoration: BoxDecoration(
                    color: index % 2 == 0 ? kVeryLightOrange : kVeryLightGreen,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white70,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                          spreadRadius: 0.5)
                    ],
                    borderRadius: BorderRadius.circular(18)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                        'assets/line${index % 2 == 0 ? 1 : 2}b.svg'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlackText(
                            'Your balance',
                            size: 14,
                            weight: FontWeight.bold,
                          ),
                          HeightSpace(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BlackText(
                                '8,306.78',
                                size: 20,
                                weight: FontWeight.bold,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: index % 2 == 0
                                      ? kVeryLightOrange
                                      : kVeryLightGreen,
                                  border: Border.all(color: kGrey, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  Icons.arrow_downward,
                                  size: 14,
                                  color: kBlack,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            options: CarouselOptions(
                viewportFraction: 0.55,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayCurve: Curves.decelerate,
                autoPlayInterval: Duration(milliseconds: 1000),
                autoPlayAnimationDuration: Duration(seconds: 4)),
          ),
          HeightSpace(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/share-link.svg',
                  height: 15,
                ),
                WidthSpace(10),
                BlackText('Share with '),
                BlueText('team members')
              ],
            ),
          ),
          HeightSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlackText(
                      'October',
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                    HeightSpace(5),
                    GreyText(
                      'Item sales',
                      size: 12,
                    ),
                  ],
                ),
                OutlineButton(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: BlackText(
                    'Net Earnings',
                    weight: FontWeight.bold,
                  ),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          HeightSpace(20),
          Chart()
        ],
      ),
    );
  }
}
